# Azure Devops Work Items REST with Powershell
This project contains some sample functions that allows you to call the REST api via powershell.  
Its meant as a quick start to get you going rather than a complete library.

##CreateDodForWorkItems.ps1
This powershell script is responsible for running specific powershell scripts for creating DOD tasks depending on the PBI type. There are four types of PBI: 
(1) Automation Test PBI
(2) SQA PBI
(3) UAT PBI
(4) Code & Unit Test PBI

The user should provide the PBI number for the corresponding PBI types in the string arrays provided at the beginning of the script.
The script can then be executed to create the DOD tasks on the Azure DevOps Board


##PrivateData.ps1
The powershell script for creating DOD tasks is dependent on PrivateData.ps1. This powershell script is not available on github as it contains sensitive data specific to each team




## WorkItemUtilityFunctions.ps1
Some functions to call rest API showing some of the functionality.  Complete documentation here.  
https://docs.microsoft.com/en-us/rest/api/azure/devops/wit/?view=azure-devops-server-rest-5.0  
https://docs.microsoft.com/en-us/rest/api/azure/devops/wit/work%20items/update?view=azure-devops-server-rest-5.0  

## SampleFunctionCalls.ps1
Some sample calls to the functions in WorkItemUtilityFunctions.ps1

## VisualStudioSolution File
These are not needed to run the scripts but are there to help debugging etc.

## PrivateData.ps1
This contains three functions that return strings.  Not published as part of project.  Enter data directly if you like.

### Get-OrgURL
Function to return the ORG URL (string)
Example : https://dev.azure.com/XXXYYYZZZ

### Get-PersonalAccessToken
Function to return your PAT (string)
Documentation on how to create here.   
https://docs.microsoft.com/en-us/azure/devops/organizations/accounts/use-personal-access-tokens-to-authenticate?view=azure-devops

### Get-ProjectName
Function to return the project name.
Example : SampleShop

