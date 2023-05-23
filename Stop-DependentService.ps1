# Step 1: Get the service ID
$serviceName = Read-Host -prompt " Type the Service Name"  # Replace with the actual service name
$service = Get-Service -Name $serviceName

if ($service) {
    $serviceID = $service.Id
    Write-Host "Service Name: $($service.Name)"
    Write-Host "Service ID: $serviceID"

    # Step 2: Get the process with the same ID
    $process = Get-Process -Id $serviceID

    if ($process) {
        Write-Host "Process Name: $($process.Name)"
        Write-Host "Process ID: $($process.Id)"

        # Step 3: Kill the process
        $process | Stop-Process -Force
        Write-Host "Process with ID '$serviceID' has been killed."
    } else {
        Write-Host "Process with ID '$serviceID' not found."
    }
} else {
    Write-Host "Service '$serviceName' not found."
}
