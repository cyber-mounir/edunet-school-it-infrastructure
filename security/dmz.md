# DMZ Configuration

## Overview
DMZ (VLAN 40) isolates critical servers: File, FTP, Web

## Access Rules
| User Group | Allowed Access |
|------------|----------------|
| Admin      | Full access    |
| Teachers   | FTP only       |
| Students   | No access      |
| Classrooms | FTP only       |

## Tips
- Keep DMZ VLAN separate (VLAN 40)
- Use ACLs and firewall rules
- Patch servers regularly
