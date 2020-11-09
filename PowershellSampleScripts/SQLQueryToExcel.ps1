$filepath = "FilePath\AuditEvidence.csv"
Invoke-Sqlcmd -Query "Select * FROM [Database].[dbo].[TableName]" -ServerInstance "." |
Export-Csv -Path $filepath -NoTypeInformation



