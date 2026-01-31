Import-Module ActiveDirectory

# اسم المجموعة
$StudentGroup = "G_Students or G_Teachers"

# جلب كل أعضاء المجموعة
($Students or $Teacher) = Get-ADGroupMember -Identity ($StudentGroup or $TeacherGroup)

foreach ($student in $Students) {

    # استخراج الرقم من SamAccountName (مثلاً 1.abenali)
    $num = $student.SamAccountName.Split(".")[0]

    if ($num -ge 1 -and $num -le 50) {
        Disable-ADAccount -Identity $student.SamAccountName
        Write-Host "Account disabled:" $student.SamAccountName
    }
}




----------

##Disable specific students from the list
  ##disable_list.txt
  1.abenali
  5.bhaddadi
  12.camrani
#######

Import-Module ActiveDirectory

$DisableFile = "C:\Scripts\disable_list.txt"
$StudentsToDisable = Get-Content $DisableFile

foreach ($user in $StudentsToDisable) {
    Disable-ADAccount -Identity $user
    Write-Host "تم تعطيل الحساب:" $user
}
