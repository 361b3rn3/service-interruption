# Step 1: Get the process ID for the service
$serviceName = "WinDefend"  # Replace with the actual service name
$id = Get-WmiObject -Class Win32_Service -Filter "Name LIKE '$serviceName'" | Select-Object -ExpandProperty ProcessId

# Check if the process ID was found
if ($id) {
    # Step 2: Get the process with the same ID
    $process = Get-Process -Id $id

    if ($process) {
        Write-Host "Process Name: $($process.Name)"
        Write-Host "Process ID: $($process.Id)"

        # Step 3: Kill the process
        $process | Stop-Process -Force
        Write-Host "Process with ID '$id' has been killed."
    } else {
        Write-Host "Process with ID '$id' not found."
    }
} else {
    Write-Host "Service '$serviceName' not found."
}
