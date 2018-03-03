import-Module ActiveDirectory

$i=0
for ($i=0; $i = $i +1){

write-Output $i
new-ADUser -Name "Test User$i" -AccountPassword (ConvertTo-SecureString "ChangeMe123!" -AsPlainText -Force) -City London -Company somedomain -Description "Test User$i" -DisplayName "Test User$i" -GivenName Test -Office somedomain.com -SamAccountName Test.User$i -Surname User$i -enabled $true -UserPrincipalName Test.User$i@somedomain.com -EmailAddress Test.User$i@somedomain.com -ChangePasswordAtLogon $true –path "OU=Users,OU=London,OU=Global,DC=somedomain,DC=com"

  if ($i -gt 100)
  {
     break
  }
}
