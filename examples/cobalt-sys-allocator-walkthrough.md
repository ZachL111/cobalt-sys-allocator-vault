# Cobalt Sys Allocator Vault Walkthrough

I use this file as a small checklist before changing the R implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 188 | ship |
| stress | dirty state | 264 | ship |
| edge | guard slack | 209 | ship |
| recovery | layout drift | 190 | ship |
| stale | allocation pressure | 186 | ship |

Start with `stress` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
