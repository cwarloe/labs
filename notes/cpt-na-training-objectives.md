# CPT Network Analyst — Training Objectives Outline

Migrated from Drive `messy.xlsx` (network analyst CPT objectives).

## 1. Vulnerability Assessment / Security Audit
- Plan analysis from scoping doc, network map, customer configs
- Identify key cyber terrain and high-risk accounts
- Scanning: OS/version/ports; obstacles/considerations

## 2. Adversary Reconnaissance (MITRE)
- OSINT, domain/IP registration, active scanning, external apps, topology, spearphishing
- Social engineering utility; web scraping; DNS zone transfers

## 3. Initial Exploitation
- Drive-by, public-facing apps, external remote services, spearphishing attachment/link
- Common targeted protocols; HTTP brute force / XSS patterns; watering hole / URL shortening

## 4. Actions on Target
- C2, lateral movement, exfil, obfuscation, multi-stage malware, persistence
- WinRM, SSH, SchTasks, WMI, BITS; domain fronting; HTTP hide sites; DNS tunneling/entropy
- SMB lateral movement; credential attacks in traffic; ICS/SCADA & cloud (IaaS/PaaS/SaaS/…)

## 5. CPT Resources / Policies
- Intel / Host / Network Tech interfaces; leadership & customer; CI/LE; JOPP
- EO 12333, DoD directives, FISA; 2nd/3rd party dissemination; Cyber vs SIGINT authorities

## 6. Threat Hunting Tools
- Zeek logs; Windows event logs; IOC selectors (NA vs HA)

## 7. Snort / Suricata
- IDS usage, rule development, alert monitoring, content filters, variables, tuning, `$HOME_NET`, flow keyword, sample rules, Suricata log location

## 8. SIEM
- Queries: HTTP brute force, shortened URL, POST/GET imbalance, DNS spikes/entropy, Windows brute force / lateral movement; dashboards

## 9. PCAP (Wireshark)
- Subnet/URL/port/range filters; capture vs display; HTTP methods; sensor placement validation

## 10. JA3 / JA3S
- Fingerprints; sslbl.abuse.ch

## 11. Sensor Placement & Security Recommendations
- Strategy from scoping/map; gap-driven placement; prioritized recommendations; briefing; signature creation; collection plan / AAR
