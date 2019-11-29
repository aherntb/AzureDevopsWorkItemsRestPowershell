#
# CreateAutomationDodTasks.ps1
#
. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken

function Create-AutomationDodTasks
{
	Param([string]$workItemId)	
	$workItem = Get-WorkItem $orgUrl $project $personalToken $workItemId
	
	#Automoton code review
	$title = "[DOD Task]: Automoton Code Review"
	$description = "Code review automation tests with Automoton. John Hain is the person who will approve the tests."
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask
                                                                                                                                 
	#Create Test Plan
	$title = "[DOD Task]: Create Test Plan"
	$description = "Create test plan for automation test"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask

	#Automation Test Demo
	$title = "[DOD Task]: Automation Test Demo"
	$description = "Demo automation test to team"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask
}