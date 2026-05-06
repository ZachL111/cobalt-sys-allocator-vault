# cobalt-sys-allocator-vault

`cobalt-sys-allocator-vault` is a R project in systems programming. Its focus is to build an R toolkit that studies allocator behavior through fixture event logs, with golden state snapshots and no production deployment claims.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how allocation pressure and guard slack should influence a review result.

## Cobalt Sys Allocator Vault Review Notes

The first comparison I would make is `dirty state` against `allocation pressure` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cobalt-sys-allocator-walkthrough.md` walks through the case spread.
- The R code includes a review path for `dirty state` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The R addition stays small enough to inspect in one sitting.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

That command is also the regression path. It verifies the domain cases and catches mismatches between the CSV, metadata, and code.

## Next Improvements

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
