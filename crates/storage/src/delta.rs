use crate::{StateRead, StateWrite};
use anyhow::Result;
use futures::{
    future::{Either, Ready},
    stream::{BoxStream, Peekable},
    StreamExt,
};
use imbl::{OrdMap, Vector};
use parking_lot::RwLock;
use std::{
    any::{Any, TypeId},
    collections::{BTreeMap, VecDeque},
    fmt,
    ops::{Bound, RangeBounds},
    pin::Pin,
    sync::Arc,
};
use tendermint::abci::Event;

type Object = Arc<dyn Any + Send + Sync>;
type Raw = Arc<[u8]>;

#[derive(Clone, Default)]
pub struct Cache {
    application: OrdMap<String, Option<Raw>>,
    raw: OrdMap<Vec<u8>, Option<Raw>>,
    objects: OrdMap<&'static str, Option<Object>>,
    events: Vector<Event>,
}

impl fmt::Debug for Cache {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.debug_struct("Cache")
            .field("application", &self.application.len())
            .field("raw", &self.raw.len())
            .field("objects", &self.objects.len())
            .finish()
    }
}

impl Cache {
    pub fn unwritten_changes(&self) -> impl Iterator<Item = (&String, &Option<Raw>)> {
        self.application.iter()
    }
    pub fn nonverifiable_changes(&self) -> impl Iterator<Item = (&Vec<u8>, &Option<Raw>)> {
        self.raw.iter()
    }
    pub fn take_events(&mut self) -> Vec<Event> {
        std::mem::take(&mut self.events).into_iter().collect()
    }
    pub fn apply_to<S: StateWrite>(self, mut state: S) {
        for (key, value) in self.application {
            match value {
                Some(value) => state.put_raw(key, value.to_vec()),
                None => state.delete(key),
            }
        }
        for (key, value) in self.raw {
            match value {
                Some(value) => state.nonverifiable_put_raw(key, value.to_vec()),
                None => state.nonverifiable_delete(key),
            }
        }
        state.object_merge(self.objects.into_iter().collect());
        for event in self.events {
            state.record(event);
        }
    }
}

/// One persistent map per key space: a fork shares map roots, never a growing
/// vector of historical layers. Writes copy only the changed search paths.
pub struct StateDelta<S: StateRead> {
    base: Arc<RwLock<Option<S>>>,
    cache: Cache,
}

impl<S: StateRead> fmt::Debug for StateDelta<S> {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.debug_struct("StateDelta")
            .field("cache", &self.cache)
            .finish()
    }
}

impl<S: StateRead> StateDelta<S> {
    pub fn new(base: S) -> Self {
        Self {
            base: Arc::new(RwLock::new(Some(base))),
            cache: Cache::default(),
        }
    }
    pub fn fork(&mut self) -> Self {
        Self {
            base: self.base.clone(),
            cache: self.cache.clone(),
        }
    }
    pub fn flatten(self) -> (S, Cache) {
        let base = self
            .base
            .write()
            .take()
            .expect("overlay family already consumed");
        (base, self.cache)
    }
}

#[cfg(feature = "persistent")]
impl StateDelta<crate::Snapshot> {
    /// Authenticate every committed neighbor needed by newly staged writes
    /// before the enclosing SDK cache may be adopted. Persistent-map diff skips
    /// unchanged subtrees from earlier transactions.
    pub fn reserve_ordering_since(&self, prior: &Self) -> Result<()> {
        anyhow::ensure!(
            Arc::ptr_eq(&self.base, &prior.base),
            "overlay provenance differs at adoption"
        );
        use imbl::ordmap::DiffItem;
        let base = self.base.read();
        let view = base.as_ref().expect("overlay family already consumed");
        for item in prior.cache.application.diff(&self.cache.application) {
            let key = match item {
                DiffItem::Add(key, _) | DiffItem::Remove(key, _) => key,
                DiffItem::Update { new: (key, _), .. } => key,
            };
            view.reserve_ordering(crate::Space::Application, key.as_bytes())?;
        }
        for item in prior.cache.raw.diff(&self.cache.raw) {
            let key = match item {
                DiffItem::Add(key, _) | DiffItem::Remove(key, _) => key,
                DiffItem::Update { new: (key, _), .. } => key,
            };
            if crate::native::tree(key).is_none() {
                view.reserve_ordering(crate::Space::Raw, key)?;
            }
        }
        Ok(())
    }
}

impl<S: StateWrite> StateDelta<S> {
    pub fn apply(self) -> (S, Vec<Event>) {
        let (mut base, mut cache) = self.flatten();
        let events = cache.take_events();
        cache.apply_to(&mut base);
        (base, events)
    }
}

impl<S: StateWrite> StateDelta<Arc<S>> {
    pub fn try_apply(self) -> Result<(S, Vec<Event>)> {
        let (base, mut cache) = self.flatten();
        let events = cache.take_events();
        let mut base = Arc::try_unwrap(base)
            .map_err(|_| anyhow::anyhow!("overlay parent is still borrowed"))?;
        cache.apply_to(&mut base);
        Ok((base, events))
    }
}

type MergeState<K> = (
    Pin<Box<Peekable<BoxStream<'static, Result<(K, Vec<u8>)>>>>>,
    VecDeque<(K, Option<Raw>)>,
);

fn merge<K: Ord + Clone + Send + Sync + 'static>(
    base: BoxStream<'static, Result<(K, Vec<u8>)>>,
    changes: VecDeque<(K, Option<Raw>)>,
) -> BoxStream<'static, Result<(K, Vec<u8>)>> {
    futures::stream::unfold(
        (Box::pin(base.peekable()), changes),
        |mut state: MergeState<K>| async move {
            loop {
                let key = match state.0.as_mut().peek().await {
                    Some(Ok((key, _))) => Some(key.clone()),
                    Some(Err(_)) => {
                        return Some((state.0.next().await.expect("peeked error"), state))
                    }
                    None => None,
                };
                match (key, state.1.front()) {
                    (None, None) => return None,
                    (Some(_), None) => {
                        return Some((state.0.next().await.expect("peeked value"), state))
                    }
                    (Some(base), Some((cached, _))) if base < *cached => {
                        return Some((state.0.next().await.expect("peeked value"), state))
                    }
                    (Some(base), Some((cached, _))) if base == *cached => {
                        state.0.next().await;
                    }
                    _ => {}
                }
                let (key, value) = state.1.pop_front().expect("cache selected");
                if let Some(value) = value {
                    return Some((Ok((key, value.to_vec())), state));
                }
            }
        },
    )
    .boxed()
}

impl<S: StateRead> StateRead for StateDelta<S> {
    fn read_view(&self) -> Option<crate::ReadView> {
        self.base
            .read()
            .as_ref()
            .expect("overlay family already consumed")
            .read_view()
    }
    type GetRawFut = Either<Ready<Result<Option<Vec<u8>>>>, S::GetRawFut>;
    type PrefixRawStream = BoxStream<'static, Result<(String, Vec<u8>)>>;
    type PrefixKeysStream = BoxStream<'static, Result<String>>;
    type NonconsensusPrefixRawStream = BoxStream<'static, Result<(Vec<u8>, Vec<u8>)>>;
    type NonconsensusRangeRawStream = Self::NonconsensusPrefixRawStream;

    fn get_raw(&self, key: &str) -> Self::GetRawFut {
        if let Some(value) = self.cache.application.get(key) {
            return Either::Left(futures::future::ready(Ok(value
                .as_ref()
                .map(|v| v.to_vec()))));
        }
        Either::Right(
            self.base
                .read()
                .as_ref()
                .expect("overlay family consumed")
                .get_raw(key),
        )
    }
    fn nonverifiable_get_raw(&self, key: &[u8]) -> Self::GetRawFut {
        if crate::native::tree(key).is_some() {
            if let Some(view) = self.read_view() {
                view.observations.poison();
            }
            return Either::Left(futures::future::ready(Err(anyhow::anyhow!(
                "native tree nodes require an authentication scope"
            ))));
        }
        if let Some(value) = self.cache.raw.get(key) {
            return Either::Left(futures::future::ready(Ok(value
                .as_ref()
                .map(|v| v.to_vec()))));
        }
        Either::Right(
            self.base
                .read()
                .as_ref()
                .expect("overlay family consumed")
                .nonverifiable_get_raw(key),
        )
    }
    fn native_get_raw(&self, scope: &crate::NativeReadScope, key: &[u8]) -> Self::GetRawFut {
        if let Some(view) = self.read_view() {
            if let Err(error) = scope.check(&view.observations, key) {
                view.observations.poison();
                return Either::Left(futures::future::ready(Err(error)));
            }
        }
        if let Some(value) = self.cache.raw.get(key) {
            return Either::Left(futures::future::ready(Ok(value
                .as_ref()
                .map(|v| v.to_vec()))));
        }
        Either::Right(
            self.base
                .read()
                .as_ref()
                .expect("overlay family consumed")
                .native_get_raw(scope, key),
        )
    }
    fn native_range_raw(
        &self,
        scope: &crate::NativeReadScope,
        prefix: &[u8],
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        let start = range.start_bound().cloned();
        let end = range.end_bound().cloned();
        let changes = self
            .cache
            .raw
            .range(prefix.to_vec()..)
            .take_while(|(k, _)| k.starts_with(prefix))
            .filter(|(k, _)| (start.clone(), end.clone()).contains(&k[prefix.len()..].to_vec()))
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect();
        let base = self
            .base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .native_range_raw(scope, prefix, range)?
            .boxed();
        Ok(merge(base, changes))
    }
    fn object_get<T: Any + Send + Sync + Clone>(&self, key: &'static str) -> Option<T> {
        if let Some(value) = self.cache.objects.get(key) {
            return value.as_ref().map(|v| {
                v.downcast_ref::<T>()
                    .expect("overlay object type changed")
                    .clone()
            });
        }
        self.base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .object_get(key)
    }
    fn object_type(&self, key: &'static str) -> Option<TypeId> {
        if let Some(value) = self.cache.objects.get(key) {
            return value.as_ref().map(|v| (**v).type_id());
        }
        self.base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .object_type(key)
    }
    fn prefix_raw(&self, prefix: &str) -> Self::PrefixRawStream {
        let changes = self
            .cache
            .application
            .range(prefix.to_owned()..)
            .take_while(|(k, _)| k.starts_with(prefix))
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect();
        let base = self
            .base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .prefix_raw(prefix)
            .boxed();
        merge(base, changes)
    }
    fn prefix_keys(&self, prefix: &str) -> Self::PrefixKeysStream {
        self.prefix_raw(prefix)
            .map(|entry| entry.map(|(key, _)| key))
            .boxed()
    }
    fn nonverifiable_prefix_raw(&self, prefix: &[u8]) -> Self::NonconsensusPrefixRawStream {
        if crate::native::intersects(prefix) {
            if let Some(view) = self.read_view() {
                view.observations.poison();
            }
            return futures::stream::once(async {
                Err(anyhow::anyhow!(
                    "native tree scans require an authentication scope"
                ))
            })
            .boxed();
        }
        let changes = self
            .cache
            .raw
            .range(prefix.to_vec()..)
            .take_while(|(k, _)| k.starts_with(prefix))
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect();
        let base = self
            .base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .nonverifiable_prefix_raw(prefix)
            .boxed();
        merge(base, changes)
    }
    fn nonverifiable_range_raw(
        &self,
        prefix: Option<&[u8]>,
        range: impl RangeBounds<Vec<u8>>,
    ) -> Result<Self::NonconsensusRangeRawStream> {
        let prefix = prefix.unwrap_or_default();
        if crate::native::intersects(prefix) {
            if let Some(view) = self.read_view() {
                view.observations.poison();
            }
            anyhow::bail!("native tree scans require an authentication scope");
        }
        let start = match range.start_bound() {
            Bound::Included(k) => Bound::Included(k.clone()),
            Bound::Excluded(k) => Bound::Excluded(k.clone()),
            Bound::Unbounded => Bound::Unbounded,
        };
        let end = match range.end_bound() {
            Bound::Included(k) => Bound::Included(k.clone()),
            Bound::Excluded(k) => Bound::Excluded(k.clone()),
            Bound::Unbounded => Bound::Unbounded,
        };
        let changes = self
            .cache
            .raw
            .range(prefix.to_vec()..)
            .take_while(|(key, _)| key.starts_with(prefix))
            .filter(|(key, _)| (start.clone(), end.clone()).contains(&key[prefix.len()..].to_vec()))
            .map(|(k, v)| (k.clone(), v.clone()))
            .collect();
        let base = self
            .base
            .read()
            .as_ref()
            .expect("overlay family consumed")
            .nonverifiable_range_raw(Some(prefix), range)?
            .boxed();
        Ok(merge(base, changes))
    }
}

impl<S: StateRead> StateWrite for StateDelta<S> {
    fn put_raw(&mut self, key: String, value: Vec<u8>) {
        self.cache.application.insert(key, Some(value.into()));
    }
    fn delete(&mut self, key: String) {
        self.cache.application.insert(key, None);
    }
    fn nonverifiable_put_raw(&mut self, key: Vec<u8>, value: Vec<u8>) {
        self.cache.raw.insert(key, Some(value.into()));
    }
    fn nonverifiable_delete(&mut self, key: Vec<u8>) {
        self.cache.raw.insert(key, None);
    }
    fn object_put<T: Any + Send + Sync + Clone>(&mut self, key: &'static str, value: T) {
        if let Some(existing) = self.object_type(key) {
            assert_eq!(existing, TypeId::of::<T>(), "overlay object type changed");
        }
        self.cache.objects.insert(key, Some(Arc::new(value)));
    }
    fn object_delete(&mut self, key: &'static str) {
        self.cache.objects.insert(key, None);
    }
    fn object_merge(&mut self, objects: BTreeMap<&'static str, Option<Object>>) {
        self.cache.objects.extend(objects);
    }
    fn record(&mut self, event: Event) {
        self.cache.events.push_back(event);
    }
}

pub trait ArcStateDeltaExt: Sized {
    type S: StateRead;
    fn try_begin_transaction(&mut self) -> Option<StateDelta<&mut StateDelta<Self::S>>>;
}
impl<S: StateRead> ArcStateDeltaExt for Arc<StateDelta<S>> {
    type S = S;
    fn try_begin_transaction(&mut self) -> Option<StateDelta<&mut StateDelta<S>>> {
        Arc::get_mut(self).map(StateDelta::new)
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    #[tokio::test]
    async fn adopted_scopes_keep_one_persistent_overlay_and_rollback_exact_values() {
        let mut state = StateDelta::new(());
        state.put_raw("account".into(), b"original".to_vec());
        let mut saved = state.fork();
        for index in 0..50_000 {
            let mut next = saved.fork();
            next.put_raw(format!("nullifier/{index:08}"), vec![1]);
            next.object_put("charge", index);
            saved = next;
        }
        assert_eq!(saved.cache.application.len(), 50_001);
        assert_eq!(
            state.get_raw("account").await.unwrap(),
            Some(b"original".to_vec())
        );
        assert!(state.get_raw("nullifier/00049999").await.unwrap().is_none());
        assert_eq!(
            saved.get_raw("nullifier/00049999").await.unwrap(),
            Some(vec![1])
        );
        let mut sibling = saved.fork();
        sibling.delete("account".into());
        assert!(sibling.get_raw("account").await.unwrap().is_none());
        assert_eq!(
            saved.get_raw("account").await.unwrap(),
            Some(b"original".to_vec())
        );
        assert_eq!(saved.prefix_keys("nullifier/").count().await, 50_000);
    }
    #[tokio::test]
    async fn ordered_overlay_reads_merge_tombstones_and_isolate_objects() {
        let mut base = StateDelta::new(());
        for key in ["a", "b", "d"] {
            base.put_raw(key.into(), key.as_bytes().to_vec());
        }
        base.object_put("count", 2u64);
        let mut child = StateDelta::new(&base);
        child.delete("b".into());
        child.put_raw("c".into(), b"changed".to_vec());
        child.object_put("count", 3u64);
        let rows = child
            .prefix_raw("")
            .collect::<Vec<_>>()
            .await
            .into_iter()
            .collect::<Result<Vec<_>>>()
            .unwrap();
        assert_eq!(
            rows,
            vec![
                ("a".into(), b"a".to_vec()),
                ("c".into(), b"changed".to_vec()),
                ("d".into(), b"d".to_vec())
            ]
        );
        assert_eq!(base.object_get::<u64>("count"), Some(2));
        assert_eq!(child.object_get::<u64>("count"), Some(3));
    }
}
