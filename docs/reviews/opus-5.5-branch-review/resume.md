# Resume the bounded Opus review

The reviewed implementation is `c4b8b6d28e54b5e1d50769ee12209b56d613a60d`, based
on `57eb44e8cae809c68974ed5d6723bdb904b2f8c1`. Later review-document commits do not
change that artifact. This is a review task; findings are not authorization to
apply runtime fixes.

Read [confirmed findings](findings.md), [coordinator triage](coordinator-notes.md)
and [manifest](manifest.json). The [file assignments](file-assignments.json)
contain every assigned path and each focused follow-up's scope. Assignment does
not mean completed inspection. Raw reports preserve exact unread portions;
several raw verdicts say COMPLETE despite unread tests, so the manifest records
those sectors as partial. Complete the pending follow-ups, then explicitly close
or subdivide any residual gap. Do not repeat settled hypotheses or completed work.

Use actual `claude-opus-5-5` through Claude Code 2.1.280 or newer, one fresh session
at a time. This run verified the response's model identifier; do not silently
substitute a Codex model. Include AGENTS.md and the shieldd-review skill explicitly
in each prompt because CLAUDE.md was intentionally removed. Read-only tools:
Read, Grep, Glob; no nested agents, builds or network. The coordinator schedules
any useful reproduction under repository resource limits.

For one sector, materialize its immutable per-file diffs with
`git diff --no-ext-diff BASE HEAD -- PATH` and relevant originals with
`git show BASE:PATH`. Review current source only after confirming it matches the
artifact. Bundle small diffs; skip wholesale reading of retired backends,
generated data, imported upstream source and raw historical logs according to
the review's declared provenance scope. Keep a complete per-path accounting.

Invocation settings used:

```
claude --safe-mode --model claude-opus-5-5 --effort high \
  --tools Read,Grep,Glob --allowedTools Read,Grep,Glob \
  --permission-mode dontAsk --strict-mcp-config --mcp-config '{"mcpServers":{}}' \
  --no-session-persistence --max-budget-usd 1.50 \
  --output-format stream-json --verbose -p '<bounded sector prompt>'
```

The dollar cap is CLI accounting, not exact subscription usage or a billing
statement. Monitor actual `rate_limit_event` utilization. Emit/persist text
checkpoints every 6–8 tool calls, and save the final Markdown plus model/usage
metadata before starting another sector. Name every unread path and exact region;
never infer full coverage from a successful process or absence of findings.
Consolidate verified findings separately from speculative suggestions.

Prioritize remaining public statement/encoding and proof plan paths, FROST,
nullifier storage, host lifecycle and admission before lower-risk test/doc tails.
Update the index, manifest, file assignments and findings after each result.
No automatic continuation has been scheduled by this report.
