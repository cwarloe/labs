# labs

Cyber / network-analyst training lab materials migrated from Google Drive.

## Layout

- `scripts/` — lab tooling (IDS rule builder, scan helpers, IR collection, utility scripts)
- `notes/` — CPT / ops-log notes converted from Drive docs and spreadsheets

Migrated from Drive in the Drive→GitHub consolidation pass (2026-09-15).

## Running the scripts

- `scripts/python_scan.py` — Python 3; needs `dnspython` (`pip install dnspython`). Scans the hard-coded lab range `192.168.13.0/24`; only run it on a lab network you're authorized to scan.
- `scripts/cloud_folder_dupes.py` — Windows only (reads OneDrive / Google Drive paths from the registry); needs `xxhash` (`pip install xxhash`).
- `scripts/build_alerts.sh` — Bash; run `dos2unix` on it first if it was edited on Windows. Writes `bad.txt` and `bad_domains.rules` in the current directory.
