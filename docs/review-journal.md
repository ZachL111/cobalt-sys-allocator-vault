# Review Journal

I treated `cobalt-sys-allocator-vault` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its systems programming focus without claiming live deployment or external usage.

## Cases

- `baseline`: `allocation pressure`, score 188, lane `ship`
- `stress`: `dirty state`, score 264, lane `ship`
- `edge`: `guard slack`, score 209, lane `ship`
- `recovery`: `layout drift`, score 190, lane `ship`
- `stale`: `allocation pressure`, score 186, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
