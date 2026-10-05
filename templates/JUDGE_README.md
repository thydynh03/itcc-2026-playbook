# [Solution name]

> One sentence: who it is for, what problem it solves, what changes for them.

## Evaluate this in 5 minutes

1. Open **[URL]** — no install, no sign-up.
2. Demo account: `[role]` (role switcher, top right).
3. Follow the main path: **[step 1] → [step 2] → [step 3]**.
4. Try an edge case: upload `samples/[file]` — the system should flag it and hand over to a person.
5. See how well the AI performs: **[URL]/evaluation**.

Backup: [3-minute video].

## What is real, simulated, and not built

| | |
|---|---|
| **Real** | [intake, AI pipeline, approval, audit log] |
| **Simulated (labelled in the UI)** | [integration with X, email sending] |
| **Not built, by decision** | [login, admin] — see "Scope" |

All data is synthetic.

## The problem

[Problem statement, with the sentence from the case it is based on.]

## How it works

[One diagram. Five steps.]

Where AI is used: [step, step]. Everything else is deterministic code. With AI switched off, the workflow still runs manually.

## AI quality

| Metric | Result | On |
|---|---|---|
| Correct on test set | [a]% | [N] hand-written cases |
| Rule-based baseline | [b]% | same cases |
| Ungrounded answers | [x] of [N] | |
| Cost per case | [c] | measured from logs |

Test cases and results: `eval/`.

## Architecture and decisions

[One-page diagram.] Decision records: `docs/memory/DECISIONS.md`.

## Scope

Built: [list]. Deliberately not built: [list, with reasons].

## What the team developed, and what we reused

| | |
|---|---|
| Developed by the team | [list] |
| AI-generated, reviewed by the team | [list] — see AI journal |
| Open-source components | [name — licence], [name — licence] |

## Run locally

```bash
[commands]
```

## Team

[Name — role] · [Name — role] · [Name — role]
