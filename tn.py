#!/usr/bin/python
from subprocess import call
import sys

windows=[]
with open('tmux-windows.cfg') as f:
    for line in f:
        session={}
        session['name']=line
        windows.append(session)

if len(windows)==0:
    print "No window names specified in tmux.cfg. One window name per line."
    sys.exit(1)

call(["tmux","new","-s",sys.argv[1],"-d"])

call(["tmux","rename-window","-t",sys.argv[1],windows[0]['name']])
windows=windows[1:]

while len(windows)>0:
    call(["tmux","new-window","-t",sys.argv[1],"-n",windows[0]['name'],"-d"])
    windows=windows[1:]

call(["tmux","attach","-t",sys.argv[1]])

sys.exit(0)
