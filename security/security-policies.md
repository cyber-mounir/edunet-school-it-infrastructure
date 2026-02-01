# Security Policies

## Password Policy
- Minimum length: 8 characters
- Must include letters, numbers, special characters
- Reset every 90 days
- Force password change at first login

## User Access Policy
| Group      | Permissions                           |
|------------|---------------------------------------|
| Admin      | Full access                           |
| Teachers   | Limited access                        |
| Students   | Only labs and approved resources      |
| Classrooms | HTTP & internal apps only             |

## Backup & Recovery
- Daily backups for AD and File Servers
- Monthly restore test

## Monitoring & Logging
- Enable event logging on all servers
- Send logs to central monitoring server
