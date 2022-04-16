@echo off
ping -n 181 127.0.0.1>nul
:main_loop
    ping -n 1 XXX.XXX.XXX.XXX | findstr TTL || goto reset_nic
    ping -n 16 127.0.0.1>nul
    goto main_loop
:reset_nic
    netsh interface set interface XXXXX disable
    ping -n 16 127.0.0.1>nul
    netsh interface set interface XXXXX enable
    ping -n 181 127.0.0.1>nul
    goto main_loop