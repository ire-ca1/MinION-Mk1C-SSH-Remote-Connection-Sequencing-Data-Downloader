MinION Mk1C SSH Remote Connection & Sequencing Data Downloader

Overview

This repository was developed and maintained by: Coronado-Arrázola Irenice · Janko-Montecinos Gael · X. Carolina Cuba-Grandy

This repository provides a standardized Windows PowerShell (.ps1) workflow to establish a secure remote SSH connection to an Oxford Nanopore MinION Mk1C sequencer and download complete sequencing runs from the internal /data directory over a Local Area Network (LAN).

System Requirements

Local Computer: Windows 10 or Windows 11 OS (64-bit architecture recommended) with Windows PowerShell and the native OpenSSH Client enabled.

Sequencer: Oxford Nanopore MinION Mk1C device.

Network Hardware: Ethernet network cable .

Network Environment: Active connection to the institutional Local Area Network (LAN).

Step 1: MinION Mk1C Network Preparation

The MinION Mk1C operating system is configured bydefault to use DHCP, allowing it to change the connection when we conect the Ethernet cable

1. Turn on the MinION Mk1C and connect the LAN cable

2. On the device's touchscreen, open the MinKNOW interface and navigate to Host → Network → Wired (menu labels may vary by software version).

3. Confirm the status of connection shows "Connected"

4. Under "IP configuration" , record the assigned IP address (for example, an address in the form 192.168.x.x). If the device hostname is resolvable on the laboratory network, it may be used instead.

5. Use the verified hostname or IP address in the PowerShell commands below. Replace all example values with the values applicable to your device and workstation.

Note: MC-XXXXX, 192.168.x.x, and RUN_FOLDER_NAME are placeholders, not literal values. Do not assume that a hostname will resolve unless it is configured and reachable on your network.

Step 2 : Connection and sequencing data download

To simplify the data retrieval process, this repository provides the pull_mk1c_run.ps1 script, which automates the SSH connection to the MinION Mk1C, displays the available sequencing runs in the /data directory as a numbered menu, and downloads the selected run to the local workstation.

1. Download the pull_mk1c_run.ps1 script from this GitHub repository.

2. Open Windows PowerShell and execute the script.

Note: Before running the script, ensure that the MinION Mk1C hostname or IP address and SSH credentials are correctly configured. 
      The workstation must also have the Windows OpenSSH Client installed and network access to the device

References :	  
- Oxford Nanopore Technologies. (2025). *MinION Mk1C User Manual* (Versión MKC_2005_v1_revAJ_20May2025). [Oxford Nanopore Technologies](https://nanoporetech.com/es/document/minion-mk1c-user-manual).
