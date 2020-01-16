#
# AutomationDod.ps1
#
. .\PrivateData.ps1 
. .\WorkItemUtilityFunctions.ps1
. .\DodScripts\CreateDod\CreateAutomationDodTasks.ps1
. .\DodScripts\CreateDod\CreateCodeUnitTestDodTasks.ps1
. .\DodScripts\CreateDod\CreateUatDodTasks.ps1
. .\DodScripts\CreateDod\CreateSqaDodTasks.ps1

$orgUrl = Get-OrgURL
$project = Get-ProjectName 
$personalToken = Get-PersonalAccessToken

$automationPbiList = ""
$sqaPbiList = "61,67"
$uatPbiList = "80,86"
$codeUnitTestPbiList = ""


if($automationPbiList.Trim().Length -gt 1)
{	
	##
	## Automation test DOD Tasks
	##
	Write-Host ""
	Write-Host "Adding Auto Test DOD Tasks..." -ForegroundColor Yellow


	$automationPbiList.Split(",") | ForEach{
	
		Create-AutomationDodTasks $_	
	}

}

if($sqaPbiList.Trim().Length -gt 1)
{
	##
	## SQA test DOD Tasks
	##
	Write-Host ""
	Write-Host "Adding SQA Test DOD Tasks..." -ForegroundColor Yellow
	
	$sqaPbiList.Split(",") | ForEach{
	
		Create-SqaDodTasks $_	
	}
}

if($uatPbiList.Trim().Length -gt 1)
{
	##
	## UAT test DOD Tasks
	##
	Write-Host ""
	Write-Host "Adding UAT Test DOD Tasks..." -ForegroundColor Yellow
	
	$uatPbiList.Split(",") | ForEach{
	
		Create-UatDodTasks $_	
	}
}

if($codeUnitTestPbiList.Trim().Length -gt 1)
{
	##
	## Code + Unit Test DOD Tasks
	##
	Write-Host ""
	Write-Host "Adding Code + Unit Test DOD Tasks..." -ForegroundColor Yellow
	
	$codeUnitTestPbiList.Split(",") | ForEach{
	
		Create-CodeUnitTestDodTasks $_	
	}
}