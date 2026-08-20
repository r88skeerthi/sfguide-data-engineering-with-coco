# Project: CoCo DE Guide

## Environment

- **Database:** DEMO_DB
- **Schema:** TPCH_TRANSFORMED
- **Warehouse:** DEMO_WH
- **Platform:** CoCo Desktop — do not use the `cortex` CLI command

## dbt

Build all models:

```
dbt build --project-dir dbt/
```

Build a single model:

```
dbt build --select <model_name> --project-dir dbt/
```

## Conventions

- Model files use **snake_case** naming
- Source data lives in `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1` — all raw tables must be referenced through `_sources.yml` (never hardcoded)

## Git Workflow

- Feature branches follow the pattern: `feature/<description>`
- PRs are required before merging to main