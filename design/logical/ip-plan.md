# IP Addressing Plan – EduNet School

This file defines the IP subnets and gateways for each VLAN in the school network.

| VLAN       | VLAN ID | Subnet           | Gateway       |
|------------|---------|----------------|--------------|
| ADMIN      | 10      | 192.168.10.0/24 | 192.168.10.1 |
| TEACHERS   | 20      | 192.168.20.0/24 | 192.168.20.1 |
| STUDENTS   | 30      | 192.168.30.0/24 | 192.168.30.1 |
| SERVERS    | 40      | 192.168.40.0/24 | 192.168.40.1 |


## Notes
- Each VLAN subnet corresponds to the VLAN ID defined in `vlan-plan.md`.  
- Gateways are assigned to the core router interface for inter-VLAN routing.  
- DHCP servers should assign IP addresses within the respective VLAN subnet ranges.  
- This plan ensures network isolation, scalability, and easy management.
