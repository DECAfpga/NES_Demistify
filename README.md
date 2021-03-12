# nes
This is a port of Luddes NES core to the MIST and Turbo Chameleon 64. See his FPGANES blog at http://fpganes.blogspot.de for details. The original source code can be found at https://github.com/strigeus/fpganes
Many changes ported from https://github.com/MiSTer-devel/NES_MiSTer
The MiST version can be found at https://github.com/mist-devel/nes

The Turbo Chameleon 64 port wraps the MiST core in a compatibility layer (DeMiSTify, by Alastair M. Robinson), and makes no material changes to the core itself.

# Controls
Since the Turbo Chameleon 64 can't support more than three gamepad buttons via the DB9 ports, the extra buttons are mapped as follows:

## Gamepad 1
| Gamepad button | PS/2 keyboard | C64 keyboard | CDTV controller |
| :------------- | :------------ | :----------- | :-------------- |
| Start          | Enter         | Return       | Play*           |
| Select         | Right shift   | Right shift  | Volume up*      |
| Button A       | Right Alt     |              | Button B        |
| Button B       | Right Ctrl    |              | Button A        |

## Gamepad 2
| Gamepad button | PS/2 keyboard | C64 keyboard | CDTV controller |
| :------------- | :------------ | :----------- | :-------------- |
| Start          | Caps Lock     | Run/Stop     | Play*           |
| Select         | Left shift    | Left shift   | Volume up*      |
| Button A       | Left Ctrl     |              | Button B        |
| Button B       | Left Alt      |              | Button A        |

## Other keys
| Function       | PS/2 keyboard | C64 keyboard | CDTV controller |
| :------------- | :------------ | :----------- | :-------------- |
| Menu           | F12           | &lt;- (top left) | Power           |

