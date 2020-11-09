$filepath = "Enter Full Path"

# Create an Object Excel.Application using Com interface
$objExcel = New-Object -ComObject Excel.Application

# Disable the 'visible' property so the document won't open in excel
$objExcel.Visible = $true

# Open the Excel file and save it in $WorkBook
$objExcel.Workbooks.Open($filepath)