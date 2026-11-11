
Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "P@$$w0rd2026" -AsPlainText -Force

$StudentFile = "C:\Scripts\students.txt"

Get-Content $StudentFile | ForEach-Object {
    $FullName = $_.Trim()
    $Parts = $FullName.Split(" ")
    $fn = $Parts[0]
    $ln = $Parts[1]

    $user = ($ln.Substring(0,2) + "-" + $fn).ToLower()

    try {
        New-ADUser `
            -Name $FullName `
            -SamAccountName $user `
            -UserPrincipalName "$user@edunet.local" `
            -Path "OU=Students,DC=edunet,DC=local" `
            -AccountPassword $Password `
            -Enabled $true `
            -ChangePasswordAtLogon $true `
            -ErrorAction Stop

        Add-ADGroupMember G_Students $user -ErrorAction Stop

        Write-Host "Créé : $user" -ForegroundColor Green
    }
    catch {
        Write-Host "Ne pas cree : $user" -ForegroundColor Red
        Write-Host "Erreur : $($_.Exception.Message)"
    }
}
