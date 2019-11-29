#
# Script1.ps1
#
. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken


##
## Automation test DOD Tasks
##
Write-Host ""
Write-Host "Adding Auto Test DOD Tasks..." -ForegroundColor Yellow

#Automoton code review
$title = "Automoton Code Review"
$description = "Code review automation tests with Automoton"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask
                                                                                                                                 
#Create Test Plan
$title = "Create Test Plan"
$description = "Create test plan for automation test"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask

#Automation Test Demo
$title = "Automation Test Demo"
$description = "Demo automation test"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask

##
## SQA test DOD Tasks
##
Write-Host ""
Write-Host "Adding SQA Test DOD Tasks..." -ForegroundColor Yellow

#Run all test cases
$title = "Run all test cases"
$description = "Run all test cases related to this feature"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask

##
## UAT test DOD Tasks
##
Write-Host ""
Write-Host "Adding UAT Test Support DOD Tasks..." -ForegroundColor Yellow

#Deploy to UAT Environment
$title = "Deploy to UAT Environment"
$description = "This task is complete when the deployment to the UAT Environment is complete"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask

##
## Code + Unit Test DOD Tasks
##
Write-Host ""
Write-Host "Adding Code + Unit Test DOD Tasks..." -ForegroundColor Yellow

#Developer Tested
$title = "Developer Tested"
$description = "Developer has tested the feature before closing out this task"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask

#Demo
$title = "Code Demo"
$description = "Developer has demoed the feature before closing off this task"
$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
Write-HostWorkItem $newTask