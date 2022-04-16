# <center>nic manager</center>

this script will monitor the connection to a desired network device. upon loss
of connection, the local NIC will be disabled & then re-enabled.

## Quick Setup Guide

1. replace `XXX.XXX.XXX.XXX` in **nic_manager.bat** with the ip address of the target network device.
2. on the local system, open a **command prompt** prompt window, and run the following command:
    ```batch
    netsh interface show interface
    ```
3. in the resulting output, note the **Interface Name** of the network interface
   you want to reset.
4. replace **both** occurences of `XXXXX` in **nic_manager.bat** with the previously noted **Interface Name**.
