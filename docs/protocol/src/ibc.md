# Legacy IBC modules

The repository still contains IBC client, channel, packet, and ICS-20 code from
the former standalone Shieldd architecture. It is not part of the target
deployment.

In the target design, Shieldd executes only inside Bankd with the same
validators. Bankd owns deposits and withdrawals and invokes Shieldd through the
typed host execution boundary. No IBC hop authorizes a compliance status change
or separates Bankd and Shieldd state finality.

The pages below are retained only as implementation background while obsolete
standalone paths are removed. They must not be used as product or deployment
documentation.
