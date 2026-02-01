# Access Control Lists (ACLs)

## VLANs
- VLAN 10: Admin
- VLAN 20: Teachers
- VLAN 30: Students
- VLAN 40: DMZ (Servers)
- VLAN 50: Classrooms

## Rules Examples

# Admin full access
permit ip 192.168.10.0 0.0.0.255 any

# Teachers access to Classrooms
permit ip 192.168.20.0 0.0.0.255 192.168.50.0 0.0.0.255

# Deny Students from Classrooms
deny ip 192.168.30.0 0.0.0.255 192.168.50.0 0.0.0.255

# Deny Students from Admin & DMZ
deny ip 192.168.30.0 0.0.0.255 192.168.10.0 0.0.0.255
deny ip 192.168.30.0 0.0.0.255 192.168.40.0 0.0.0.255
