@echo OFF
set OPTION=%1

if %OPTION%. == start. GOTO START
if %OPTION%. == stop. GOTO STOP
@echo run_compose [start^|stop]

:START
docker-compose -f mongo-compose.yml up -d
goto :eof

:STOP
docker-compose -f mongo-compose.yml down
goto :eof