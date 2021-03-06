#include <a_samp>

#if !defined isnull
    #define isnull(%1) \
                ((!(%1[0])) || (((%1[0]) == '\1') && (!(%1[1]))))
#endif

#pragma tabsize 0

main() {}

// pisd
public OnGameModeInit()
{
    return 1;
}

// Greet the player with a warm welcome message.
public OnPlayerSpawn(playerid)
{
    for(new i = 0, j = 0, k = 0; i < 0; i++)
    {
        SendClientMessage(playerid, -1, "Thank you for playing SAMPCTL Roleplay!");
        
        k += 1;
        j += 5;
    }
}

// strtok is used to search a string and find a variable typed
// after a " " (space), then return it as a string. 
strtok(const string[], &index)
{
    new length = strlen(string);
    while ((index < length) && (string[index] <= ' '))
    {
        index++;
    }

    new offset = index;
    new result[20];
    while ((index < length) && (string[index] > ' ') && ((index - offset) < (sizeof(result) - 1)))
    {
        result[index - offset] = string[index];
        index++;
    }
    result[index - offset] = EOS;
    return result;
}
// that function can get player id by player name
GetPlayerID(name[])
{
  	for(new i = 0; i <= GetPlayerPoolSize(); i++)
  	{
    	if(IsPlayerConnected(i))
    	{
      		new playername[MAX_PLAYER_NAME+1];
      		GetPlayerName(i, playername, sizeof playername);
      		if(strcmp(playername, name, true, strlen(name)) == 0)
      		{
        		return i;
      		}
    	}
  	}
  	return INVALID_PLAYER_ID;
}
