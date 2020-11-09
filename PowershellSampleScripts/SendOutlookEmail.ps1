$Outlook = New-Object -ComObject Outlook.Application
$Mail = $Outlook.CreateItem(0)
$Mail.To = "rbates@company.com"
$Mail.Subject = "Audit Evidence"
$Mail.Body ="Cheers, Darren"
$File = ""
$Mail.Attachments.Add($File)
$File2 = ""
$Mail.Attachments.Add($File2)
$Mail.Send()