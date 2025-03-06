#Add to head of file the following imports
import pyperclip, os # requires prior usage: python -m pip install pyperclip


# Paste following code block before attaching to the python process for example before initialization of keystone engine (ks)
pid = os.getpid()
print(f"***** The process ID (PID) is: {pid} *****") # print process ID so we know what PID to attach too
pyperclip.copy(pid) #send PID to clipboard, in order that all we have to do is start windbg, press F6, paste in process id to clipboard and press enter to start debugging