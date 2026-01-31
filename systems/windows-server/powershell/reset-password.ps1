Import-Module ActiveDirectory

# Ask which group to reset passwords for
$GroupName = Read-Host "Enter the group name (G_Students or G_Teachers)"

# File with the list of users (SamAccountName) to reset
$UserFile = Read-Host "Enter the path of the user file (TXT)"

# Ask for the new password securely
$NewPassword = Read-Host "Enter the new password" -AsSecureString

# Read all users from the file
$Users = Get-Content $UserFile

foreach ($user in $Users) {

    # Check if user exists in AD
    $ADUser = Get-ADUser -Identity $user -ErrorAction SilentlyContinue

    if ($ADUser) {

        # Check if user belongs to the selected group
        $IsMember = Get-ADGroupMember $GroupName | Where-Object {
            $_.SamAccountName -eq $user
        }

        if ($IsMember) {

            # Reset the password
            Set-ADAccountPassword `
                -Identity $user `
                -NewPassword $NewPassword `
                -Reset

            # Force user to change password at next logon
            Set-ADUser -Identity $user -ChangePasswordAtLogon $true

            Write-Host "Password reset for:" $user
        }
        else {
            Write-Host "User is not in the group $GroupName:" $user
        }
    }
    else {
        Write-Host "User does not exist:" $user
    }
}
