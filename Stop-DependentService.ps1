$serviceName = Read-Host -prompt  "Type the Service Name"

# Get the process ID
$id = Get-WmiObject -Class Win32_Service -Filter "Name LIKE '$serviceName'" | Select-Object -ExpandProperty ProcessId

# Define a loop
Do {

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
            break  # Exit the loop since the process no longer exists
        }
    } else {
        Write-Host "Service '$serviceName' not found."
        break  # Exit the loop since the service was not found
    }

    # Add a delay before the next iteration (optional)
    Start-Sleep -Seconds 5  # Adjust the delay as needed
    
    # Get the process ID
    $id = Get-WmiObject -Class Win32_Service -Filter "Name LIKE '$serviceName'" | Select-Object -ExpandProperty ProcessId
    Write-Host "Process with new ID '$id'."

}Until ($id -eq '0')
