# FIRST collection.bat — IR lab collection script

Migrated from Drive `collection.txt` and Google Doc `collection` (identical content).

Windows batch script that builds `c:\FIRST\<host>_<date>\` and gathers:

- System info (time source/zone, boot time, encrypted drives, dir listing, hotfixes, drivers, OS details, PsInfo, env vars, users, logged-on, sessions, accounts, local admins, firewall, IP/network config, USB)
- Browser history/cache (Chrome, Firefox, IE) + addons
- Suspicious files (ADS streams, DensityScout entropy, Sigcheck)
- Running processes/services (pslist, tasklist, psservice)
- Installed software (WMIC/registry) + Office addins
- Misc (hosts, open files, shares, sessions)
- Network activity (nbtstat, netstat, DNS cache, routes, ARP, cports)
- Persistence (startup, scheduled tasks, Run keys, autoruns)
- Registry hive save + RegRipper reports
- User activity (prefetch, event log timeline, last activity, executed programs, jumplists, WinLogon, profiles, open windows)
- Event log copy; completion timestamp

Original Drive files trashed after this migration note landed in the labs repo.
