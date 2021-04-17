<#
    .DISCLAIMER

    This Sample Code is provided for the purpose of illustration only and is not intended to be used in a production environment.
    THIS SAMPLE CODE AND ANY RELATED INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED,
    INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.  We grant You
    a nonexclusive, royalty-free right to use and modify the Sample Code and to reproduce and distribute the object code form of
    the Sample Code, provided that You agree: (i) to not use Our name, logo, or trademarks to market Your software product in which
    the Sample Code is embedded; (ii) to include a valid copyright notice on Your software product in which the Sample Code is
    embedded; and (iii) to indemnify, hold harmless, and defend Us and Our suppliers from and against any claims or lawsuits,
    including attorneys’ fees, that arise or result from the use or distribution of the Sample Code.

    .DESCRIPTION
    Imports an exported XML file with Custom Status Message Queries to track specific Audits within a ConfigMgr Environment

    .PARAMETER XMLPath
    Location of the XML file you are importing

    .EXAMPLE
    .\Import-CMStatusMessageQueries.ps1 -XMLPath C:\Queries\Enhanced_StatMsgQueries.xml

    .EXPORT EXAMPLE IF DESIRED
    .\Get-CMStatusMessageQuery -Name Audit* | Export-Clixml <path>\Enhanced_StatMsgQueries.xml

    .REFERENCES
    -- Provides a list of all the Status Message IDs in an environment
    https://gallery.technet.microsoft.com/scriptcenter/Enumerate-status-message-6e7e1761

    -- MS Docs References for PoSH Cmdlets
    https://docs.microsoft.com/en-us/powershell/module/configurationmanager/new-cmstatusmessagequery?view=sccm-ps
    https://docs.microsoft.com/en-us/powershell/module/configurationmanager/get-cmstatusmessagequery?view=sccm-ps
    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/export-clixml?view=powershell-6
    https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/import-clixml?view=powershell-6

    .NOTES
    Author:           Brandon McMillan (MSFT)
    Acknowledgments:  Kevin Kasalonis (MSFT), Various sources
    Created:          2018.03.28
    Updated:          2020.04.17
#>

param(
    [Parameter(Mandatory=$True)]
    [string]$XMLPath
)

# Imports ConfigMgr Module
Import-Module "$env:SMS_ADMIN_UI_PATH\..\ConfigurationManager.psd1"

# Get SiteCode
$SiteCode = Get-PSDrive -PSProvider CMSITE
Set-location $SiteCode":"

# Imports XML
try
{
    $CMStatusMsgs = Import-Clixml $XMLPath
}
catch
{
    Write-Host -ForegroundColor Red "Invalid file path or file type.  Please try again."
    Exit
}

foreach ($Query in $CMStatusMsgs)
{
    try
    {
        $StatusQuery = @{
            Name = $Query.Name
            Expression = $Query.Expression
            Comments = $Query.Comments
        }
        New-CMStatusMessageQuery @StatusQuery | Out-Null
        Write-Host -ForegroundColor Green $Query.Name "was created successfully."
    }
    catch
    {
        Write-Host -ForegroundColor Red $Query.Name "already exists."
    }
}
