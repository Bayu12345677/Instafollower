from asciimatics.effects import Cycle, Stars
from asciimatics.renderers import FigletText as fg

from asciimatics.scene import Scene
from asciimatics.screen import Screen

import sys, os

try:
    text = sys.argv[1]
    under = sys.argv[2]
except:
    text = ""
    pass
    
if !(test -z @(text)) or !(test -z @(under)):
    exit("[!] Input Not Found")
    pass
    
def yntks(screen):        
    effect = [
        Cycle (
            screen,
            fg(text, font='slant'),
            int(screen.height / 2 + 2 - 3)),
        Cycle (
            screen,
            fg(under, font='term'),
            int(screen.height / 2 + 5)),
        Stars(screen, 200)
    ]; screen.play([Scene(effect, 500)])


Screen.wrapper(yntks)
