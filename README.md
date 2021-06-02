# Microsoft Endpoint Configuration Manager (ConfigMgr) Enhanced Audit Status Message Queries

I have found that Status Message Queries can be one of the more underappreciated features of ConfigMgr.  The information you can gather in a quick and easy query can be very powerful in helping you determine root cause analysis of an issue.  If you desire to quickly assess certain activities within your environment, please use the script/XML within this resource to import custom auditing status message queries into your environment.

Please reference the following blog article for more information:  [TechCommunity Blog - Enhanced Audit Status Message Queries](https://techcommunity.microsoft.com/t5/Core-Infrastructure-and-Security/Enhanced-Audit-Status-Message-Queries/ba-p/884897).

# Import Status Message Queries

1. Download the **Import-CMStatusMessageQueries.ps1** and **Enhanced_StatMsgQueries.xml** files to your local ConfigMgr environment.

2. Run the following command:

```powershell
Import-CMStatusMessageQueries.ps1 -XMLPath C:\Queries\Enhanced_StatMsgQueries.xml
```

3. Verify the queries imported successfully.  Example:

![Export Example](/.images/Export_Example.jpg)

# Queries Included

The following custom audit status message queries are included:

|Query Title|Query Details|
|--|--|
|Audit - All Alert Actions|Includes DRS Alerts <br> Message IDs: 30240-30244|
|Audit - All Application Actions |Message IDs: 30226-30228 / 49003-49005 / 52300|
|Audit - All Application Catalog Actions|Message IDs: 30800-30805 / 50000-50004
|Audit - All Asset Intelligence Actions|Message IDs: 30208-30209 / 31001
|Audit - All Azure and Co-Management Actions|Message IDs: 53001-53005 / 53401-53403 / 53501-53503
|Audit - All Boundary Group Actions|Message IDs: 40500-40505
|Audit - All Client and Collection Miscellaneous Actions|Includes Update Membership, Device Imports, Clear PXE Deployments<br>Message IDs: 30104 / 30213 / 42021|
|Audit - All Client Configuration Requests (CCRs)|Client Push actions<br>Message IDs: 30106-30111|
|Audit - All Client Operations Actions|Includes “Right Click” actions<br>Message IDs: 40800-40804|
|Audit - All Client Settings Actions|Includes Antimalware Policies<br>Message IDs: 40300-40305|
|Audit - All CMPivot and Script Actions|Message IDs: 40805-40806 / 52500-52505|
|Audit - All Conditional Access Actions|Includes Exchange Online, SharePoint Online, and On-Prem Exchange actions<br> Message IDs: 30340-30341|
|Audit - All ConfigMgr Actions in Console|Checks components: Microsoft.ConfigurationManagement.exe / AdminUI.PS.Provider.dll|
|Audit - All Configuration Baseline Actions|Message IDs: 30168 / 30193-30198
|Audit - All Configuration Items|Includes Compliance Settings and Endpoint Protection policy actions<br>Message IDs: 30152-30167|
|Audit - All Content Library Actions|Includes Content Library changes<br>Message IDs: 30080 / 30189-30191|
|Audit - All Distribution Point Actions|Message IDs: 30009-30011 / 30068 / 30109 / 30125 / 30500-30503 / 40409-40410
|Audit - All Distribution Point Changes|Message IDs: 40400-40409 / 40506
|Audit - All Folder Actions|Message IDs: 30113-30117
|Audit - All Messages|
|Audit - All Messages (Specified Message ID)|
|Audit - All Messages (Specified Timeline)|
|Audit - All Migration Actions|Message IDs: 30900-30907
|Audit - All Mobile Device Management Actions|Message IDs: 40200-40206 / 45000-45004 / 47000-47002 / 48000-48003 / 49003-49005 / 51000-51006 / 52000-52020|
|Audit - All Phased Deployment Actions|Message IDs: 53601-53603|
|Audit - All Query Actions|Message IDs: 30063-30065 / 30302-30303|
|Audit - All Report Actions|Message IDs: 30091-30093 / 31000-31002|
|Audit - All Search Folder Actions|Message IDs: 30700-30702|
|Audit - All Secondary Site Actions|Message IDs: 30012-30014 / 30021-30023|
|Audit - All Site Server Boundary Actions|Message IDs: 30054-30056|
|Audit - All Site Server Definition Actions|Message IDs: 30030-30032|
|Audit - All Site Server Property Actions|Message IDs: 30024-30029|
|Audit - All Site Server Role Actions|Message IDs: 30036-30038|
|Audit - All Site Server Security Actions|Message IDs: 30057-30062 / 30210-30212 / 31200-31242 / 31203-31249|
|Audit - All Site Server SQL Actions|Includes Site Maintenance Tasks<br> Message IDs: 30048-30053|
|Audit - All Software Metering Rules Actions|Message IDs: 30094-30095 / 30105
|Audit - All Software Update Actions|Message IDs: 30112 / 30118-30124 / 30135-30137 / 30172 / 30183-30188 / 30196-30198 / 30219-30221 / 30229-30231 / 30506-30507 / 42031-42033 / 4900-49002|
|Audit - All User Object Actions| Message IDs: 30600-30606|
