# Firewall Configuration

## Group Rules

| Group      | Allowed Protocols     | Notes                          |
|------------|-----------------------|--------------------------------|
| Admin      | All TCP/UDP           | Full access to all VLANs       |
| Teachers   | FTP, HTTP             | Can access Classrooms (VLAN50) |
| Students   | HTTP only             | Limited access to Classrooms   |
| Classrooms | HTTP, internal apps   | Isolated from Admin & DMZ      |
