# Module manifest for module 'EWS_RT'
# Created by: Mohamed El Azaar
# Created on: 2/08/2018

@{

# Script module or binary module file associated with this manifest.
RootModule = 'EWS-RT.psm1'

# Version number of this module.
ModuleVersion = '1.0'

# ID used to uniquely identify this module
GUID = 'b5d12680-9647-11e8-9eb6-529269fb1459'

# Author of this module
Author = 'Mohamed El Azaar'

# Company or vendor of this module
CompanyName = 'FireEye'

# Copyright statement for this module
Copyright = '(c) 2017 Mohamed El Azaar. All rights reserved.'

# Description of the functionality provided by this module
# Description = 'Couple of EWS Powershell scripts for carrying out specific tasks, check examples/help'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 
'Get-MailInfo',
'Get-GlobalAddressList',
'Invoke-ImpersonatedAuth',
'Invoke-MailEnum',
'Invoke-GenerateHomePage',
'Set-HomePage'
}