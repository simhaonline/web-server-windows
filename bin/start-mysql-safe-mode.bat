@ECHO OFF
ECHO Starting MySQL (Safe mode)...
set prg=mysqld.exe
QPROCESS "%prg%">NUL
IF %errorlevel% GTR 0 (
	echo "Process (%prg%) starting..."
	cd "C:\server\mysql\bin"
	%prg% --safe-mode --skip-grant-tables --log-basename=C:\server\var\log\mysql\ --console
) else (
	echo "Process (%prg%) already starting..."
)
