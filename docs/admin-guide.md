# Admin Guide

## Network Overview
- VLANs: Admin, Teachers, Students, Servers
- IP Subnets: Defined in design/logical/ip-plan.md

## Windows Server Configuration
- Domain: school.local
- OUs: Admins, Teachers, Students
- Users & Groups: Managed via Active Directory
- GPO: Password policies, USB restrictions, control panel restrictions

## File Server
- Shared folders per department
- NTFS permissions based on AD groups

## Security
- ACLs configured on switches
- Firewall rules applied to core router
