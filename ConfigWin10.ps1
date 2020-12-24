$ErrorActionPreference = "SilentlyContinue"
$AppXApps = @(
        ##################################
        # Unnecessary Windows 10 AppX Apps
        ##################################
        "*Microsoft.BingNews*"
        "*Microsoft.BingSports*"
        "*Microsoft.BingFinance*"
        "*Microsoft.GetHelp*"
        "*Microsoft.Getstarted*"
        "*Microsoft.Messaging*"
        "*Microsoft.Microsoft3DViewer*"
        "*Microsoft.MicrosoftOfficeHub*"
        "*Microsoft.MicrosoftSolitaireCollection*"
        "*Microsoft.NetworkSpeedTest*"
        "*Microsoft.Office.OneNote*"
        "*Microsoft.Office.Sway*"
        "*Microsoft.OneConnect*"
        "*Microsoft.People*"
        "*Microsoft.WindowsPhone"
        "*Microsoft.Print3D*"
        "*Microsoft.SkypeApp*"
        "*Microsoft.WindowsAlarms*"
        "*Microsoft.WindowsCamera*"
        "*microsoft.windowscommunicationsapps*"
        "*Microsoft.WindowsFeedbackHub*"
        "*Microsoft.WindowsMaps*"
        "*Microsoft.WindowsSoundRecorder*"
        #"*Microsoft.Xbox.TCUI*"
        #"*Microsoft.XboxApp*"
        #"*Microsoft.XboxGameOverlay*"
        #"*Microsoft.XboxIdentityProvider*"
        #"*Microsoft.XboxSpeechToTextOverlay*"
        "*Microsoft.ZuneMusic*"
        "*Microsoft.ZuneVideo*"

        ################################
        # Sponsored Windows 10 AppX Apps
        ################################

        # Add sponsored/featured apps to remove in the "*AppName*" format

        "*EclipseManager*"
        "*ActiproSoftwareLLC*"
        "*AdobeSystemsIncorporated.AdobePhotoshopExpress*"
        "*Duolingo-LearnLanguagesforFree*"
        "*PandoraMediaInc*"
        "*CandyCrush*"
        "*Wunderlist*"
        "*Flipboard*"
        "*Twitter*"
        "*Facebook*"
        "*Spotify*"
)
$Keys = @(   
        #Remove Background Tasks
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.BackgroundTasks\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
            
        #Windows File
        "HKCR:\Extensions\ContractId\Windows.File\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
            
        #Registry keys to delete if they aren't uninstalled by RemoveAppXPackage/RemoveAppXProvisionedPackage
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\46928bounde.EclipseManager_2.2.4.51_neutral__a5h4egax66k6y"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Launch\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
            
        #Scheduled Tasks to delete
        "HKCR:\Extensions\ContractId\Windows.PreInstalledConfigTask\PackageId\Microsoft.MicrosoftOfficeHub_17.7909.7600.0_x64__8wekyb3d8bbwe"
            
        #Windows Protocol Keys
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.PPIProjection_10.0.15063.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.15063.0.0_neutral_neutral_cw5n1h2txyewy"
        "HKCR:\Extensions\ContractId\Windows.Protocol\PackageId\Microsoft.XboxGameCallableUI_1000.16299.15.0_neutral_neutral_cw5n1h2txyewy"
               
        #Windows Share Target
        "HKCR:\Extensions\ContractId\Windows.ShareTarget\PackageId\ActiproSoftwareLLC.562882FEEB491_2.6.18.18_neutral__24pqs290vpjk0"
    )
Write-Host "`n---------------"
Write-Host "Privacy & Security Changes"
Write-Host "---------------`n"

Write-Host "Disable 'Let apps use my advertising ID'"
Write-Host "Disable SmartScreen Filter for Store Apps"
Write-Host "Disable WiFi Sense HotSpot Sharing"
Write-Host "Disable Shared WiFi Sense HotSpot Auto-Connect"
Write-Host "Disable Activity Tracking"
Write-Host "Disable Bing Search Results"
Write-Host "Disable Cortana"
Write-Host "Disable P2P Update downloads outside of local network"
Write-Hist "Disable Windows Feedback Experience program"

Write-Host "`n---------------"
Write-Host "GUI Changes"
Write-Host "---------------`n"

Write-Host "Change Explorer home screen back to 'This PC'"
Write-Host "Disable Quick Access - Recent Files"
Write-Host "Disable Quick Access - Recent Folders"
Write-Host "Restore the classic sound mixer"
Write-Host "Set Windows theme to Dark"

Write-Host "`n---------------"
Write-Host "QOL Changes"
Write-Host "---------------`n"

Write-Host "QOL: Change Windows Updates to Notify to schedule restart`n"

Do{$setConf = Read-Host("Confirm these changes [Y/N]")}Until(($setConf -ieq "Y") -Or ($setConf -ieq "N"))

If($setConf -ieq "N"){Stop-Process $PID}

Write-Host "`n"

##################
# Privacy Settings
##################

#-------------------------------------------------------
# Privacy: Let apps use my advertising ID: Disable
Write-Host "`nPrivacy: Disabling 'Let apps use my advertising ID'"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo).Enabled -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore:
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo -Name Enabled -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
# Privacy: SmartScreen Filter for Store Apps: Disable
Write-Host "`nPrivacy: Disabling SmartScreen Filter for Store Apps"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Name EnableWebContentEvaluation -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost).EnableWebContentEvaluation -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore:
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost -Name EnableWebContentEvaluation -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
Write-Host "`nPrivacy: Disabling WiFi Sense HotSpot Sharing"
If(!(Test-Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting")) {
	New-Item -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi" -Name AllowWiFiHotSpotReporting | Out-Null
}
Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" -Name value -Type DWord -Value 0
If((Get-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting").value -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}

Write-Host "`nPrivacy: Disabling Shared WiFi Sense HotSpot Auto-Connect"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" -Name value -Type DWord -Value 0
If((Get-ItemProperty -Path "HKLM:\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots").value -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
#-------------------------------------------------------

#-------------------------------------------------------
Write-Host "`nPrivacy: Disabling Activity Tracking"
@('EnableActivityFeed','PublishUserActivities','UploadUserActivities') |ForEach-Object{Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\System -Name $_ -Type DWord -Value 0}
@('EnableActivityFeed','PublishUserActivities','UploadUserActivities') |ForEach-Object{If((Get-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\System).$_ -eq "0" ){Write-Host "OK!"}Else{Write-Host "Error."}}
#-------------------------------------------------------

#-------------------------------------------------------
# Start Menu: Disable Bing Search Results
Write-Host "`nPrivacy: Disabling Bing Search Results"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name BingSearchEnabled -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search).BingSearchEnabled -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore (Enabled):
# Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search -Name BingSearchEnabled -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
# Disable Telemetry (requires a reboot to take effect)
#Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection -Name AllowTelemetry -Type DWord -Value 0
#Get-Service DiagTrack,Dmwappushservice | Stop-Service | Set-Service -StartupType Disabled
#-------------------------------------------------------

#-------------------------------------------------------
# Disable Cortana
Write-Host "Privacy: Disabling Cortana"
    $Cortana1 = "HKCU:\SOFTWARE\Microsoft\Personalization\Settings"
    $Cortana2 = "HKCU:\SOFTWARE\Microsoft\InputPersonalization"
    $Cortana3 = "HKCU:\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore"
    # Step 1
    If (!(Test-Path $Cortana1)) {
		New-Item $Cortana1
	}
    Set-ItemProperty $Cortana1 AcceptedPrivacyPolicy -Value 0 
    If((Get-ItemProperty -Path $Cortana1).AcceptedPrivacyPolicy -eq "0"){Write-Host "OK!"}Else{Write-Host "Error disabling AcceptedPrivacyPolicy."}
    # Step 2
    If (!(Test-Path $Cortana2)) {
        New-Item $Cortana2
	}
	Set-ItemProperty $Cortana2 RestrictImplicitTextCollection -Value 1 
    Set-ItemProperty $Cortana2 RestrictImplicitInkCollection -Value 1 
    If((Get-ItemProperty -Path $Cortana2).RestrictImplicitTextCollection -eq "1"){Write-Host "OK!"}Else{Write-Host "Error disabling RestrictImplicitTextCollection."}
    If((Get-ItemProperty -Path $Cortana2).RestrictImplicitInkCollection -eq "1"){Write-Host "OK!"}Else{Write-Host "Error disabling RestrictImplicitInkCollection."}
    # Step 3
    If (!(Test-Path $Cortana3)) {
		New-Item $Cortana3
	}
    Set-ItemProperty $Cortana3 HarvestContacts -Value 0
    If((Get-ItemProperty -Path $Cortana3).HarvestContacts -eq "0"){Write-Host "OK!"}Else{Write-Host "Error disabling HarvestContacts."}
#-------------------------------------------------------
Write-Output "Privacy : Disabling Windows Feedback Experience program..."
$Advertising = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo"
If (Test-Path $Advertising) {
    Set-ItemProperty $Advertising Enabled -Value 0 
}
If((Get-ItemProperty -Path $Advertising).Enabled -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
#-------------------------------------------------------
############################
# Personal Preferences on UI
############################

#-------------------------------------------------------
# Change Explorer home screen back to "This PC"
Write-Host "`nGUI: Changing Explorer home screen back to 'This PC'"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 1
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced).LaunchTo -eq "1"){Write-Host "OK!"}Else{Write-Host "Error."}
# Change it back to "Quick Access" (Windows 10 default)
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name LaunchTo -Type DWord -Value 2
#-------------------------------------------------------

#-------------------------------------------------------
# These make "Quick Access" behave much closer to the old "Favorites"
# Disable Quick Access: Recent Files
Write-Host "`nGUI: Disabling Quick Access - Recent Files"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer).ShowRecent -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# Disable Quick Access: Frequent Folders
Write-Host "`nGUI: Disabling Quick Access - Frequent Folders"
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer).ShowFrequent -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore:
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowRecent -Type DWord -Value 1
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer -Name ShowFrequent -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
# Disable the Lock Screen (the one before password prompt - to prevent dropping the first character)
#If (-Not (Test-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization)) {
#	New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows -Name Personalization | Out-Null
#}
#Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization -Name NoLockScreen -Type DWord -Value 1
# To Restore:
#Set-ItemProperty -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization -Name NoLockScreen -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
# Use the Windows 7-8.1 Style Volume Mixer
Write-Host "`nGUI: Restoring the classic sound mixer"
If (-Not (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC")) {
	New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -Name MTCUVC | Out-Null
}
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" -Name EnableMtcUvc -Type DWord -Value 0
If((Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC").EnableMtcUvc -eq "0"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore (Windows 10 Style Volume Control):
#Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\MTCUVC" -Name EnableMtcUvc -Type DWord -Value 1
#-------------------------------------------------------

#-------------------------------------------------------
# Dark Theme for Windows
Write-Host "`nGUI: Setting dark theme"
If (!(Test-Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize)) {
	New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes -Name Personalize | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Type DWord -Value 0
If((Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize).AppsUseLightTheme -eq "0"){Write-Host "OK!"}Else{Write-Host "Error disabling AppsUseLightTheme in HKLM."}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Type DWord -Value 0
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize).AppsUseLightTheme -eq "0"){Write-Host "OK!"}Else{Write-Host "Error disabling AppsUseLightTheme in HKCU."}
# To Restore (Light Theme):
#Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Type DWord -Value 1
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Type DWord -Value 1
#-------------------------------------------------------


#################
# Windows Updates
#################

#-------------------------------------------------------
# Change Windows Updates to "Notify to schedule restart"
Write-Host "`nQOL: Change Windows Updates to Notify to schedule restart"
If (!(Test-Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate)) {
	New-Item -Path HKCU:\SOFTWARE\Microsoft -Name WindowsUpdate | Out-Null
}
If (!(Test-Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX)) {
	New-Item -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate -Name UX | Out-Null
}
If (!(Test-Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings)) {
	New-Item -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX -Name Settings | Out-Null
}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 1
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings).UxOption -eq "1"){Write-Host "OK!"}Else{Write-Host "Error."}
# To Restore (Automatic):
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings -Name UxOption -Type DWord -Value 0
#-------------------------------------------------------

#-------------------------------------------------------
# Disable P2P Update downlods outside of local network
Write-Host "`nPrivacy: Disabling P2P Update downloads outside of local network"
If (!(Test-Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization)) {
	New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion -Name DeliveryOptimization | Out-Null
}
If (!(Test-Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config)) {
	New-Item -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization -Name Config | Out-Null
}
Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Name DODownloadMode -Type DWord -Value 1
If((Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config).DODownloadMode -eq "1"){Write-Host "OK!"}Else{Write-Host "Error."}
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization -Name SystemSettingsDownloadMode -Type DWord -Value 3
If((Get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization).SystemSettingsDownloadMode -eq "3"){Write-Host "OK!"}Else{Write-Host "Error."}
# To restore (PCs on my local network and PCs on the internet)
#Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Name DODownloadMode -Type DWord -Value 3
#Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization -Name SystemSettingsDownloadMode -Type DWord -Value 1
# To disable P2P update downloads completely:
#Set-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config -Name DODownloadMode -Type DWord -Value 0
#-------------------------------------------------------

Write-Host "`nPart 1/3 completed. Part 2 starting shortly."

Start-Sleep -Seconds 5

Clear-Host

Write-Host "`n---------------"
Write-Host "Apps to be removed"
Write-Host "---------------`n"

ForEach($AppName in $AppXApps)
{
    Write-Host $AppName
}
Write-Host "`n"

Do{$appConf = Read-Host("Confirm these changes [Y/N]")}Until(($appConf -ieq "Y") -Or ($appConf -ieq "N"))

If($appConf -ieq "N"){Stop-Process $PID}

# App Removal
ForEach ($App in $AppXApps) 
{
    If($null -ne (Get-AppxPackage -Name $App))
    {
        Write-Verbose -Message ('Removing Package {0}' -f $App)
        Write-Host "Removing $App..."
        Get-AppxPackage -Name $App | Remove-AppxPackage -ErrorAction SilentlyContinue
        Get-AppxPackage -Name $App -AllUsers | Remove-AppxPackage -AllUsers -ErrorAction SilentlyContinue
        Get-AppxProvisionedPackage -Online | Where-Object DisplayName -like $App | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
        If($null -eq (Get-AppxPackage -Name $App)){Write-Host "$App successfully removed!`n"}
    }
    ElseIf($null -eq (Get-AppxPackage -Name $App))
    {
        Write-Host "$App is not on your computer.`n"
    }
    Start-Sleep -Seconds 1
}

Write-Host "`nPart 2/3 completed. Part 3 starting shortly."

Start-Sleep -Seconds 5

Clear-Host

Write-Host "`n---------------"
Write-Host "Regkeys to be removed"
Write-Host "---------------`n"

ForEach($KeyName in $Keys)
{
    Write-Host $KeyName
}
Write-Host "`n"

Do{$regConf = Read-Host("Confirm these changes [Y/N]")}Until(($regConf -ieq "Y") -Or ($regConf -ieq "N"))

If($regConf -ieq "N"){Stop-Process $PID}

#This writes the output of each key it is removing and also removes the keys listed above.
ForEach ($Key in $Keys) {
    Write-Output "Removing $Key from registry"
    Remove-Item $Key -Recurse
}

Read-Host("`nPress ENTER to close the process")

Stop-Process $PID