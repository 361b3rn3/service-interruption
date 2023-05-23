# Get the process ID(s) associated with the service
$serviceName = "YourServiceName"
$serviceProcesses = Get-WmiObject -Class Win32_Service | Where-Object { $_.Name -eq $serviceName } | Get-WmiObject -Class Win32_Process

if ($serviceProcesses) {
    # Kill the process(es) associated with the service
    foreach ($process in $serviceProcesses) {
        Stop-Process -Id $process.ProcessId -Force
    }

    # Stop the service itself
    Stop-Service -Name $serviceName -Force

    Write-Host "Service '$serviceName' has been stopped."
} else {
    Write-Host "No processes found for service '$serviceName'."
}
