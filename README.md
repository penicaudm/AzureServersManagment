# AzureServersManagment
Random stuff to manage Azure stuff with Infrastructure As Code

# LogicApp JSON template
### Use search and replace tools or your favorite text parser

* Replace RG-NAME with your VM resource group name

* Replace VM-NAME with your VM name

* Replace SUBSCRIPTION-ID with your VM Subscription ID

Don't forget to sign up (perform the consent) afterwards!

# Start-StopAzureVM function

### NAME
    Start-StopAzureVM

### SYNTAX
    Start-StopAzureVM [-action] {shutdown | startup} [-LogicAppURI <string>]  [<CommonParameters>]


### ALIASES
    None


### REMARKS
    None


Simple powershell function to allow someone to shutdown and startup a VM using the above logicApp

The use case here is someone who doesn't have access to the azure resources, but need to perform basic cost saving tasks (shutting down Azure VM when not in use)

Recommanded use is to add the function in the profile with the HTTP endpoint from the logicApp.
Then all you have to do is

```Powershell
Start-StopAzureVM [-action] {shutdown | startup}
```