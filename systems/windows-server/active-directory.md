# Active Directory – EduNet Secondary School

## 1. Introduction
Active Directory (AD) est utilisé pour gérer de manière centralisée tous les utilisateurs, groupes et ordinateurs d'une organisation.  
Dans notre projet, AD permet de gérer les étudiants, enseignants et administrateurs.

---

## 2. Organisation des OU et Groupes
- **OU=Students** : contient tous les comptes étudiants  
- **OU=Teachers** : contient tous les comptes enseignants  
- **OU=Admin** : contient les comptes administrateurs et directeur  
- **OU=Groups** : contient les groupes de sécurité

### Groupes de sécurité
- `G_Students` → Étudiants  
- `G_Teachers` → Enseignants  
- `G_Admin` → Administration

---
## 3.Création des groupes
```powershell
New-ADGroup -Name G_Students -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=edunet,DC=local"
New-ADGroup -Name G_Teachers -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=edunet,DC=local"
New-ADGroup -Name G_Admin -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=edunet,DC=local"
```
## 4. Création des utilisateurs
### Étudiants (400)
```powershell
New-ADUser -Name "Ali Benali" -SamAccountName abenali -UserPrincipalName abenali@edunet.local -Path "OU=Students,DC=edunet,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) -Enabled $true
```
### Enseignants (20)
```powershell
New-ADUser -Name "Samir Benamar" -SamAccountName sbenamar -Path "OU=Teachers,DC=edunet,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) -Enabled $true
```
### Admin / Directeur
```powershell
New-ADUser -Name "IT Admin" -SamAccountName admin.it -Path "OU=Admin,DC=edunet,DC=local" -Enabled $true
New-ADUser -Name "School Director" -SamAccountName director -Path "OU=Admin,DC=edunet,DC=local" -Enabled $true
```
