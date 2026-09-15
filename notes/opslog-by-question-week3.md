# Week 3 Ops Log (By Question)

Migrated from Drive `Charles - OpsLog_ByQuestion.xlsx` — network-mapping / CPT cyber training exercises.

## Summary of exercises covered

| Exercise | Topic | Focus |
| --- | --- | --- |
| 5.1-027 | Validate network maps | nmap ping sweep, TCP ports, OS detection (`192.168.13.0/24`) |
| 5.1-028 | Validate network maps | PowerShell Test-Port TCP/UDP; nmap single ports |
| 5.1-031 / 5.1-076 | Network traffic (Wireshark) | `.exe` / `.msu` filters, HTTP stream follow, export objects |
| 6.1-036 | Subnet validation | ping sweep `/24` and larger `/19` discovery |
| 6.2-039 | Host analysis (GRR) | malicious binaries, Run keys, hashes / adware |
| 6.2-040 | IOC hunt | DNS domains, GET IOCs, registry Run keys, services |
| 6.2-077 | Event logs | 4624/4625 and related |
| 6.2-078 / 079 / 080 | Static malware analysis | FileAlyzer2, UPX, PE imports/strings, VirusTotal hashes |

Lab tooling context matches `scripts/python_scan.py` (192.168.13.0/24) and `scripts/build_alerts.sh` (IDS rules from bad-domain list).

Full row-level command notes were retained in the Drive sheet during migration; this markdown captures the exercise map for the labs repo.
