#
# CreateCodeUnitTestDodTasks.ps1
#
. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken

function Create-CodeUnitTestDodTasks
{
	Param([string]$workItemId)	
	$workItem = Get-WorkItem $orgUrl $project $personalToken $workItemId
	
	
	#Developer Tested
	$title = "[DOD Task]: Developer Tested"
	$description = "Developer has tested the feature before closing out this task"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask

	#Demo
	$title = "[DOD Task]: Code Demo"
	$description = "Developer has demoed the feature to the team before closing off this task"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask

	##Code Review
	#$title = "[DOD Task]: Code Review"
	#$description = "Developer has reviewed the code for this feature with Trevor Schoen & received signoff"
	#$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	#Write-HostWorkItem $newTask
}