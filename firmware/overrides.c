#include "keyboard.h"

/* Key -> gamepad mapping.  We override this to swap buttons A and B for NES. */

unsigned char joy_keymap[]=
{
	KEY_CAPSLOCK,
	KEY_LSHIFT,
	KEY_LCTRL,
	KEY_ALT,
	KEY_W,
	KEY_S,
	KEY_A,
	KEY_D,
	KEY_ENTER,
	KEY_RSHIFT,
	KEY_RCTRL,
	KEY_ALTGR,
	KEY_UPARROW,
	KEY_DOWNARROW,
	KEY_LEFTARROW,
	KEY_RIGHTARROW,
};

// Initial ROM   //Hack to show OSD at core bootup
const char *bootrom_name="AUTOBOOTNES";
extern unsigned char romtype=0;

char *autoboot()
{
	char *result=0;
	romtype=0;
//	loadimage("NEXT186 VHD",0);
	if(!LoadROM(bootrom_name))
		result="Show/hide OSD = key F12";
	return(result);
}

