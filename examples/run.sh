#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_sched_define info
PYTHONPATH=src python -m gbt_sched_define check --payload '{"name": "<在此填写>", "workflow": "<在此填写>", "every_seconds": "<在此填写>"}'
PYTHONPATH=src python -m gbt_sched_define run   --payload '{"name": "<在此填写>", "workflow": "<在此填写>", "every_seconds": "<在此填写>"}'
