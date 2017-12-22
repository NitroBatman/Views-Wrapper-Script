::@setlocal enableextensions enabledelayedexpansion
@echo off
:Loop
IF "%1"=="" GOTO Continue
set str1=%1
set NEW_DB_USER=%str1%
set str=%str1:~0,4%

if not x%str1:f=%==x%str1% (	 
	GOTO ytm_server
)

GOTO local_server
set NEW_PASSWD=###
set ORACLE_INSTANCE=//ipaddress:####/####

:ytm_server
set NEW_DB_USER=%str%
echo "I'm in France"
GOTO create_database

:local_server
echo "I'm in Belgrade"
GOTO create_database

:create_database
echo "Creating database!"
::SET DB_LOGIN="%NEW_DB_USER% %NEW_PASSWD% %ORACLE_INSTANCE%"
echo %NEW_DB_USER%
echo .....

SHIFT
GOTO Loop
:Continue
