import time
import sys

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

while True:
    eprint("tick")
    time.sleep(1)
