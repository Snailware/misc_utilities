@echo off
ping -n 181 127.0.0.1>nul
:main
    ping -n 1 XXX.XXX.XXX.XXX | findstr TTL || goto reset
    ping -n 16 127.0.0.1>nul
    goto main
:reset
    netsh interface set interface XXXXX disable
    ping -n 16 127.0.0.1>nul
    netsh interface set interface XXXXX enable
    ping -n 181 127.0.0.1>nul
    goto main