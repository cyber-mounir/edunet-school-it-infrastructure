
Import-Module ActiveDirectory

$Domain = "DC=edunet,DC=local"

$OUs = @(
    @{Name="Admin"; Description="OU pour l'administration et la direction"},
    @{Name="Teachers"; Description="OU pour les enseignants"},
    @{Name="Students"; Description="OU pour les élèves"},
)


foreach ($ou in $OUs) {
    $exists = Get-ADOrganizationalUnit -Filter "Name -eq '$($ou.Name)'" -SearchBase $Domain -ErrorAction SilentlyContinue
    if (-not $exists) {
        New-ADOrganizationalUnit -Name $ou.Name -Path $Domain -Description $ou.Description -ProtectedFromAccidentalDeletion $true
        Write-Host "✅ OU '$($ou.Name)' created successfully."
    } else {
        Write-Host "⚠ OU '$($ou.Name)' already exists."
    }
}
