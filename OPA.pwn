/*
	OnPlayerAirbreak - Usage // Wizzard2H
*/
#define FILTERSCRIPT
#include <a_samp>
#include <OPA>
#define COL_RED            "{F81414}"
public OnFilterScriptInit()
{
        print("OnPlayerAirBreak Loaded!");
        return 1;
}
public OnFilterScriptExit()
{
        print("OnPlayerAirBreak Unloaded!");
        return 1;
}
public OnPlayerAirbreak(playerid)
{
			new strab[250];
			format(strab, sizeof(strab), ""COL_RED" *** WARNING: Player %s(%i) might be airbraking please spectate him! /spec %i", PlayerName(playerid), playerid, playerid);
			SendClientMessageToAll(-1,strab);
		 	return 1;
}
PlayerName(playerid)
{
	new ppName[24];
	GetPlayerName(playerid, ppName, 24);
 	return ppName;
}
