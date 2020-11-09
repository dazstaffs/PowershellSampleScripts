#Variable to hold variable  
$SQLServer = "."  
$SQLDBName = "Enter Database"    
#SQL Query  
$SqlQuery = "SELECT COUNT(*) AS [DATA_COUNT] FROM [Database].[dbo].[Table];"  
$SqlConnection = New-Object System.Data.SqlClient.SqlConnection  
$SqlConnection.ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = True;"  
$SqlCmd = New-Object System.Data.SqlClient.SqlCommand  
$SqlCmd.CommandText = $SqlQuery  
$SqlCmd.Connection = $SqlConnection  
$SqlAdapter = New-Object System.Data.SqlClient.SqlDataAdapter  
$SqlAdapter.SelectCommand = $SqlCmd   
#Creating Dataset  
$DataSet = New-Object System.Data.DataSet  
$SqlAdapter.Fill($DataSet)  
$DataSet.Tables