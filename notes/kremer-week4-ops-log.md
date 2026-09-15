# Kremer Week 4 — Cyber ops lab log

Lab IP context: `192.168.12.30` (2019-01-28)

| Date/Time | System/IP | Activity | Remarks |
| --- | --- | --- | --- |
| 1/28/19 | 192.168.12.30 | Nmap specific ports | `nmap -p #,#,# <ip>` |
| 1/28/19 | 192.168.12.30 | Nmap for operating system | `nmap -O <ip>` |
| 1/28/19 | 192.168.12.30 | Nmap to discover a network | `nmap -pn <ip>` |
| 1/28/19 | 192.168.12.30 | Nmap banner grab | `nmap -sV <ip>` |
| 1/28/19 | 192.168.12.30 | Check wireshark for downloaded executables | `http.response.code==200` and check for non-standard content types |
| 1/28/19 | 192.168.12.30 | Export HTTP files from wireshark | File → Export Objects → HTTP |
| 1/28/19 | 192.168.12.30 | Find beacon | Filter by frame number and source IP, sort by HTTP host column, look for time pattern |
| 1/28/19 | 192.168.12.30 | Find windows update in stream | `http.request.full_uri matches "MSU"` |
| 1/28/19 | 192.168.12.30 | Get executable path of a service | `sc qc <name> 5000` |
| 1/28/19 | 192.168.12.30 | Filter event log | Filter Current Log (4625 failed logon, 4724 change pw, 4732 sec group added) |
| 1/28/19 | 192.168.12.30 | Identify user added to group | RID 501=Guest |
| 1/28/19 | 192.168.12.30 | Non-user or group events in security log | 6281=corrupt file issue |
| 1/28/19 | 192.168.12.30 | Identify type of file | Starting with 4D5A (MZ) = executable in Hex tab of FileAnalyzer |
| 1/28/19 | 192.168.12.30 | Identify hash of file | General tab of FileAnalyzer |
| 1/28/19 | 192.168.12.30 | Identify packer used for file | General tab of FileAnalyzer |
| 1/28/19 | 192.168.12.30 | Unpack packed file | Free UPX; disable Windows Defender first |
| 1/28/19 | 192.168.12.30 | Identify how many sections in a file | PE Sections tab of FileAnalyzer |
| 1/28/19 | 192.168.12.30 | Identify minimum OS version for file | PE Header tab OS version (major) |
| 1/28/19 | 192.168.12.30 | Identify imports for file | PE Imports tab function list |

Source: Drive `Kremer_Week4` Google Doc + duplicate `Kremer_Week4.xlsx` (content equivalent).
