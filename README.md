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
