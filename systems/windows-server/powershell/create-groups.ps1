Import-Module ActiveDirectory

# Création des groupes de sécurité
$groups = @("G_Students","G_Teachers","G_Admin")
foreach ($g in $groups) {
    if (-not (Get-ADGroup -Filter "Name -eq '$g'")) {
        New-ADGroup -Name $g -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=edunet,DC=local"
        Write-Host "Groupe créé : $g"
    } else {
        Write-Host "Groupe existe déjà : $g"
    }
}
