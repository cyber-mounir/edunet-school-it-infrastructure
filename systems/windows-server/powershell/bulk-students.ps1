Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "P@$$w0rd2026" -AsPlainText -Force
$i = 1

$StudentFile = "C:\Scripts\students.txt"

Get-Content $StudentFile | ForEach-Object {
    $FullName = $_.Trim()           # Removing excess space
    $Parts = $FullName.Split(" ")   # "firstname lastname"
    $fn = $Parts[0]                 # first name
    $ln = $Parts[1]                 # last name
    $user = ($i + "." + $fn.Substring(0,1) + $ln).ToLower()

    New-ADUser -Name $FullName `
        -SamAccountName $user `
        -UserPrincipalName "$user@edunet.local" `
        -Path "OU=Students,DC=edunet,DC=local" `
        -AccountPassword $Password `
        -Enabled $true `
        -ChangePasswordAtLogon $true

   Add-ADGroupMember G_Students $user

    Write-Host "Créé : $user"
    $i++
}
