# OSED
Helper scripts for OSED - Windows User Mode Exploit Development (EXP-301) EXP-301.

A way to use these are to open the Windows VM from the kali machine VM that has the VPN to Offsec. 

From there the kali VM I do : rdesktop VMIP -u Login -p Password -g 80% -r disk:linux=/home/kali/windows. 

In the Kali machine in /home/<UsernameHomeDirHereKali>/windows copy the the files from the repo (so you just copy the files once and then reuse later on). 

In the Windows VM you will see presented an "Linux on Kali" remote network share. Browse the remote share and on the bat file you want just right click and run as adminstrator. The bat files will start looping and starting the the right process, attach windbg to it automatically and pause for the next "cycle". 

When the target process dies/exits simply press "enter" in the command shell and it will repeat the steps start the process, attach.