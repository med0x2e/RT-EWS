- A couple of Cmdlets leveraging EWS API (In case access over MAPI is limited) for performing specific enumeration/exploitation tasks on Exchange Servers (Office365, Premises-based Servers ..etc) during RT engagements;

	- Retrieving basic statistics about mailboxes, generating statistics charts for compromized accounts 
    	and average mail data size that could be exfiltrated which can be included in the final RT report.
	- Performing lookups for Mailboxes content based on specific criteria of keywords (credentials, passwords ..etc).
	- Retrieving the global address list for later password spraying
	- Impersonating other mailboxes using privileged account (Unfortunately no way to list users roles/permissions via EWS)
	- Generates a custom html page to be used as home page for exploiting CVE-2017-11774 (not necessary if
         "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\Security\EnableRoamingFolderHomepages" is set to 1)
	 - Set a given user outlook folders' home page & Verify home page is properly set.
	
- TODO-List:

	Statistics/Charts:
	 - Generating the average exfiltrated mail data size statistics per domain/subdomain (bar chart) (useful in case the target company/organization has many deployed domains/subdomains exanple: ae.xcorp.com, uk.xcorp.com)
	 - Organization Domains/Subdomains with highest numbers of compromized accounts(bar chart)
	 
- Others:
	
	 - Leverage accounts with impersonation privileges to login into multiple mailboxes and retrieving maliboxes statistics, performing searches/lookups based on specific keywords.
	 - Set home page for a specific number of users (dictionary in a specific format) & Verify pages are properly set.
	 - Triggering VBSCRIPT code execution (To figure out, via rules may be still need to confirm if EWS API allows to do so)
     - If Web server SSH acccess (to the web server) is provided, script should automate homepage generation, hosting on web server and setting homepage for a given number of users outlook folders.
	 - Leveraging Powershell Jobs to speed up certain tasks.
	 
	 
	 Would be nice to have: Checking user accounts privileges & list users with account impersonation permissions (part of Outlook Management Group).

	
- Requirements:

	- NET 3.5: https://www.microsoft.com/en-us/download/details.aspx?id=21
	- Microsoft Chart Controls for Microsoft .NET Framework 3.5: https://www.microsoft.com/en-us/download		
	 /details.aspx?id=14422
	- Microsoft Exchange Web Services Managed API 2.2: https://www.microsoft.com/en-us/download/details.aspx?id=42951
 	- Powershell Version 5+ (WMF) 5.1 Download:  https://www.microsoft.com/en-us/download/details.aspx?id=54616

- Usage:

	- Import-Module .\EWS-RT.psd1
	- Get-Command -Module EWS-RT (List of Commands)
	- Get-Help [[CMDLET]] -Examples


