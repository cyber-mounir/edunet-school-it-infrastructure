
Import-Module ActiveDirectory

$Password = ConvertTo-SecureString "P@$$w0rd2026" -AsPlainText -Force

$StudentFile = "C:\Scripts\students.csv"

Import-Csv $StudentFile | ForEach-Object {

    $fn = $_.FirstName.Trim()
    $ln = $_.LastName.Trim()
    $FullName = "$fn $ln"

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
