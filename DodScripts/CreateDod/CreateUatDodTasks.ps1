#
# CreateUatDodTasks.ps1
#

. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken

function Create-UatDodTasks
{
	Param([string]$workItemId)	
	$workItem = Get-WorkItem $orgUrl $project $personalToken $workItemId
	
	
	#Support UAT Testing
	$title = "[DOD Task]: Support UAT Testing"
	$description = "Support UAT Testing activity"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask
}
