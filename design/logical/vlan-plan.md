# VLAN Design – EduNet School

## VLANs Overview
Virtual LANs (VLANs) are used to segment the network for better security and performance.
Each department or group has its own VLAN.

| VLAN ID | Name      | Purpose                     |
|---------|-----------|-----------------------------|
| 10      | ADMIN     | Administration staff        |
| 20      | TEACHERS  | Teachers and faculty        |
| 30      | STUDENTS  | Students                    |
| 40      | SERVERS   | Servers and network devices |
| 50      | CLASSROOMS| Teachers in classes devices |

## Design Rationale
1. **Security**: Students cannot access Admin, Servers, or Director VLANs.  
2. **Performance**: Broadcast traffic is limited to each VLAN.  
3. **Scalability**: Easy to add new departments with new VLAN IDs.  
4. **Management**: Easier to apply ACLs and routing policies per VLAN.

## Notes
- VLANs should be configured on all Access Switches.  
- Trunk ports are required between Core Switch and Router for inter-VLAN routing.  
- IP addressing will follow `ip-plan.md` for each VLAN subnet.
