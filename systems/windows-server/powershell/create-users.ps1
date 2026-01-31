Import-Module ActiveDirectory

# Mot de passe commun pour les tests
$Password = ConvertTo-SecureString "P@$$w0rd123" -AsPlainText -Force

# Création utilisateur Admin
New-ADUser `
  -Name "IT Admin" `
  -SamAccountName admin.it `
  -UserPrincipalName admin.it@edunet.local `
  -Path "OU=Admin,DC=edunet,DC=local" `
  -AccountPassword $Password 
  -Enabled $true

# Création utilisateur Directeur
New-ADUser `
  -Name "School Director" `
  -SamAccountName director `
  -UserPrincipalName director@edunet.local `
  -Path "OU=Admin,DC=edunet,DC=local" `
  -AccountPassword $Password 
  -Enabled $true

# Ajout au groupe Admin
Add-ADGroupMember G_Admin admin.it,director
Write-Host "Admin et Directeur créés"
