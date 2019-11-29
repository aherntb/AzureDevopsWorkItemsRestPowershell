#
# CreateSqaDodTasks.ps1
#
. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken

function Create-SqaDodTasks
{
	Param([string]$workItemId)	
	$workItem = Get-WorkItem $orgUrl $project $personalToken $workItemId
	
	
	#Run all test cases
	$title = "[DOD Task]: Run all test cases"
	$description = "Run all test cases related to this feature"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask

	#Deploy to UAT Environment
	$title = "[DOD Task]: Deployment to UAT Environment"
	$description = "Send an email to Voltron to get code deployed to UAT. This task is complete when the deployment to the UAT Environment is complete"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask

	#Create Test Plan
	$title = "[DOD Task]: Create Test Plan"
	$description = "Create test plan for SQA testing"
	$newTask = Create-TaskForWorkItem $orgUrl $project $personalToken $title $description $workItem.url
	Write-HostWorkItem $newTask
}
