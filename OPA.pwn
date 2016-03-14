/*
	OnPlayerAirbreak - Usage // Wizzard2H
*/
#define FILTERSCRIPT // Here we defined it as a filterscript
#include <a_samp> // samp natives
#include <OPA> // the OnPlayerAirBreak Include.
#define COL_RED            "{F81414}" // Color Defined.
public OnFilterScriptInit() // When FilterScripts loads
{
        print("OnPlayerAirBreak Loaded!"); // Prints to server log
        return 1; // returns true
}
public OnFilterScriptExit() // When FilterScripts exits
{
        print("OnPlayerAirBreak Unloaded!"); // Prints to server log
        return 1; // returns true
}
public OnPlayerAirbreak(playerid) // The OPA Callback
{
			new strab[250]; // string
			format(strab, sizeof(strab), ""COL_RED" *** WARNING: Player %s(%i) might be airbraking please spectate him! /spec %i", PlayerName(playerid), playerid, playerid); // we format the message before sending it
			SendClientMessageToAll(-1,strab); // Sends to all online players
		 	return 1; // returns true
}
PlayerName(playerid)
{
	new ppName[24];
	GetPlayerName(playerid, ppName, 24);
 	return ppName;
}
