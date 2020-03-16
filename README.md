# sandbox_PowerShell_routine_killer_for_scientist
(I used and tested with PowerShell 7.)
Conveyor. You will sweet sleeping while the script will workin for you. It changes the input file, saves the result of each numerical simulation and starts a new simulation with other parameters by it-self.

Let me introduce to you the variant with LAMMPS conveyor (see the path).

### **VERY IMPORTANT:** 
PowerShell as default don't let you run scripts if you are not a server. You should or change security settings about this 
or write in code that this time you allow scripts. You could open `cmd` (crtl+R) and insert command with policy and script adress:

`powershell -ExecutionPolicy Bypass -File C:\MyScripts\script.ps1 `

this will allow to run script this time. (It more safely tnan cange secure policy.)

Or you could use `powershell -ExecutionPolicy Bypass` and visit your directory in PowerShell. You could also just put it in 
`C\:Users\YourName ` PowerShell then could find it atomatically only with name:

`powershell -ExecutionPolicy Bypass -File script.ps1 `
