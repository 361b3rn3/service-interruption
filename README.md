<!-- Back to top link -->
<a name="readme-top"></a>

<!-- NAME -->
# NAME
**stop-service-execution** 

<!-- ABSTRACT -->
## ABSTRACT 
Terminate services with dependencies

<!-- ABOUT THE PROJECT -->
## DESCRIPTION
You try to kill a service (e.g. NlaSvc) with the normal command line or a cmdlet, but the service is tied to some kind of dependencies preventing you from terminating the service.

* What is it ?
    - Interactive script 
    - Cmdlet script
    
* Who is it for ?
    - IT Support
    - Power User
        
 * Why to use it ? 
    - Avoid using task manager
    - Avoid goinng back and forth between Services tab and Detail tab.
    
 * When to use it ?
    - Native PowerShell cmdlet does not work
    - Regular DOS command line 
    
 <p align="right">(<a href="#readme-top">back to top</a>)</p>
 
<!-- Getting Started -->
## QUICKSTART

### Prerequisites
Get information about
* Windows version ; Version must be 10 or alter
    * _Cmdlet_
    ```powershell
    Get-ComputerInfo
    ```
    * _Environment Class_
    ```powershell
    [Environment]::OSVersion
    ```
* Powershell version ; Version must be 5.1 or later
    * _Cmdlet_
    ```powershell
    Get-Host
    ```
    * _Automatic Variable_
    ```powershll
    $PSVersionTable
    ```
### Installation

1. Open a PowerShell prompt with eleveted permissions
2. Set the PowerShell execution policies for Windows computers to Unrestricted
3. Download the archive of the project
4. Extract the content of the archive


 <p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## ROADMAP

| Windows | Linux | MacOS|
| :----: | :---: | :--: |
| In progress | To be decided | To be decided |

- [ ] Script
    - [x] Interactive
    - [ ] Cmdlet
   

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## LICENSE

Distributed under the Unlicense license. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## SEE ALSO
* [Stop-service](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-service)
* [Net command on Operating Systems](https://learn.microsoft.com/en-us/troubleshoot/windows-server/networking/net-commands-on-operating-systems)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## ACKNOWLEDGMENTS
* [How do i taskkill a pid that keeps changing](https://stackoverflow.com/questions/31950121/how-do-i-taskkill-a-pid-that-keeps-changing)
* [Kill a service via the command prompt cmd](https://kb.variphy.com/knowledge-base/windows-kill-a-service-via-the-command-prompt-cmd/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## CONTACT

:e-mail: 

<p align="right">(<a href="#readme-top">back to top</a>)</p>
