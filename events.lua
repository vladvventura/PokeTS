-- HKG Plugin

local pokemon = 0
local hp = 2

local function onTextMessageEvent(serverConnectionHandlerID, targetMode, toID, fromID, fromName, fromUniqueIdentifier, message, ffIgnored, clientID, oldChannelID)
	local channel = ts3.getChannelOfClient(serverConnectionHandlerID, fromID)
	
	-- lmgtfy
	if string.match(message, "!google") then
	  	print ("Running lmgtfy for:", message)
		newmsg = string.gsub( message, "!google", "" )						-- remove the !lmgtfy from link
		newmsg = string.gsub( newmsg, " ", "+" )						-- replace spaces with + to follow google syntax
		sendMsg = "https://www.google.com/search?q=" .. newmsg					-- add google url to search
		sendMsg = string.gsub( sendMsg, "?q=%+", "?q=" )					-- remove the first + from link
		sendMsg = "[url]" .. sendMsg .. "[/url]"						-- make teamspeak recognize it as a link
		print ("Parsed Link: ", sendMsg)
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)		-- send link
		print ("Sent lmgtfy link.")
	end
		
	
if string.match(message, "!8ball") then
local sendMsg = math.random(1,23)
  if sendMsg == 1 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: It is certain", channel)
 end if sendMsg == 2 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: It is decidedly so", channel)
 end if sendMsg == 3 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Without a doubt", channel)
 end if sendMsg == 4 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Yes definitely", channel)
 end if sendMsg == 5 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: You may rely on it", channel)
 end if sendMsg == 6 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: As I see it, yes", channel)
 end if sendMsg == 7 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Most likely", channel)
 end if sendMsg == 8 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Outlook good", channel)
 end if sendMsg == 9 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Yes", channel)
 end if sendMsg == 10 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Signs point to yes", channel)
 end if sendMsg == 11 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Reply hazy try again", channel)
 end if sendMsg == 12 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Ask again later", channel)
 end if sendMsg == 13 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Better not tell you now", channel)
 end if sendMsg == 14 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Cannot predict now'", channel)
 end if sendMsg == 15 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Concentrate and ask again", channel)
 end if sendMsg == 16 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Don't count on it", channel)
 end if sendMsg == 17 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: My reply is no'", channel)
 end if sendMsg == 18 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: My sources say no", channel)
 end if sendMsg == 19 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Outlook not so good", channel)
 end if sendMsg == 20 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: Very doubtful", channel)
 end if sendMsg == 21 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: It is certain", channel)
 end if sendMsg == 22 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: It is certain", channel)
 end if sendMsg == 23 then 
  ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=#ff4f00]Magic 8 Ball: [/color]: It is certain", channel)
 end
end
	


 
 
 
 pokename = {"Bulbasaur","Ivysaur","Venusaur","Charmander","Charmeleon","Charizard","Squirtle","Wartortle","Blastoise","Caterpie","Metapod","Butterfree","Weedle","Kakuna","Beedrill","Pidgey","Pidgeotto","Pidgeot","Rattata","Raticate","Spearow","Fearow","Ekans","Arbok","Pikachu","Raichu","Sandshrew","Sandslash","Nidoran♀","Nidorina","Nidoqueen","Nidoran♂","Nidorino","Nidoking","Clefairy","Clefable","Vulpix","Ninetales","Jigglypuff","Wigglytuff","Zubat","Golbat","Oddish","Gloom","Vileplume","Paras","Parasect","Venonat","Venomoth","Diglett","Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape","Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra","Kadabra","Alakazam","Machop","Machoke","Machamp","Bellsprout","Weepinbell","Victreebel","Tentacool","Tentacruel","Geodude","Graveler","Golem","Ponyta","Rapidash","Slowpoke","Slowbro","Magnemite","Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk","Shellder","Cloyster","Gastly","Haunter","Gengar","Onix","Drowzee","Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute","Exeggutor","Cubone","Marowak","Hitmonlee","Hitmonchan","Lickitung","Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr. Mime","Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte","Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair",
 "Dragonite","Mewtwo","Mew",}
 	
	-- function onClientMoveEvent(serverConnectionHandlerID, clientID, oldChannelID, newChannelID, visibility, moveMessage)
	-- if newChannelID == channel then	
			-- pokemon = math.random(1,151) 
				-- pokename = pokename[pokemon]
				-- final = ("[b][color=red][Event][/color][/b] A wild " .. pokename .. " appears...[b][color=red][Options]:[/color][/b][b] throwrock[/b],[b] throwpokeball[/b] [b] Type: ![option][/b] ")
				-- ts3.requestSendChannelTextMsg(serverConnectionHandlerID, final , channel) 
				-- hp = math.random(2,5)
			-- end
	-- end
	
	if string.match(message, "!pokemon") then
				pokemon = math.random(1,151) 
				pokename = pokename[pokemon]
				final = ("[b][color=red][Event][/color][/b] A wild " .. pokename .. " appears...[b][color=red][Options]:[/color][/b][b] throwrock[/b],[b] throwpokeball[/b] [b] Type: ![option][/b] ")
				ts3.requestSendChannelTextMsg(serverConnectionHandlerID, final , channel) 
				hp = math.random(2,5)
		end
	
	
		if string.match(message, "!throwrock") then
			if pokemon == 0 then 
				 ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=red][Event][/color][/b] There are no pokemon in your area.", channel)
				 end
			if pokemon > 0 then
				if hp > 1 then
					ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=red][Event][/color][/b] The pokemon was weakened! [b][color=red][Options]:[/color][/b][b] throwrock[/b],[b] throwpokeball[/b]", channel)
					hp = (hp - 1) 
				elseif hp == 1 then
					ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=red][Event][/color][/b] The pokemon fainted!", channel)
					hp = 2
					pokemon = 0
				end
			end
		end	
		
		
		if string.match(message, "!throwpokeball") then
			if pokemon == 0 then 
				 ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=red][Event][/color][/b] There are no pokemon in your area.", channel)
				 end
			if pokemon > 0 then
				if hp > 1 then
					ts3.requestSendChannelTextMsg(serverConnectionHandlerID, "[b][color=red][Event][/color][/b] You failed to catch the pokemon. The pokemon fled.", channel)	
					pokemon = 0 
				elseif hp == 1 then
					file = io.open("C:\\Users\\"+user+"\\Desktop\\pokemon.txt", "a+")
					file:write(fromUniqueIdentifier .. " " .. pokename[pokemon])
					file:write("\n")
					file:close()
					caught = ("[b][Event] [/b]You caught a " .. pokename[pokemon] .. "!")
					ts3.requestSendChannelTextMsg(serverConnectionHandlerID, caught, channel)
					hp = 2 
					pokemon = 0
					
					end 
				end
		end
		
	if string.match(message, "!read") then
		file = io.open("C:\\Users\\"+user+"\\Desktop\\pokemon.txt", "a+")
		file:read (table.concat(fromUniqueIdentifier) )
		file:close()
		end

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if string.match(message, "!report") then
		print ("Running rtfw for:", message)
		sendMsg = "[B][COLOR=#5f497a]HKG Complaint Form:[/COLOR][COLOR=#1d1b10] [URL=https://docs.google.com/forms/d/1icM1eUkXXuGrXrJ08rkhMCN9Fr3Nd3vly942XwHzEUU/viewform]Click Here![/URL][/COLOR][/B]"
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	

	
	if string.match(message, "!report") then
		print ("Running rtfw for:", message)
		sendMsg = "[B][COLOR=#5f497a]HKG Complaint Form:[/COLOR][COLOR=#1d1b10] [URL=https://docs.google.com/forms/d/1icM1eUkXXuGrXrJ08rkhMCN9Fr3Nd3vly942XwHzEUU/viewform]Click Here![/URL][/COLOR][/B]"
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	
	if string.match(message, "!riot") then
		print ("Running rtfw for:", message)
		sendMsg = "[B][COLOR=#5f497a]HKG Riot URL Collection:[/COLOR][COLOR=#1d1b10] [URL=https://docs.google.com/spreadsheets/d/1Yy8nw-htxUdX-rcnDkcVZNXmoa85Q-L2EMtiOdaNOas/edit#gid=0]Click Here![/URL][/COLOR][/B]"
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	if string.match(message, "!mod") then
		print ("Running rtfw for:", message)
		sendMsg = "[B][COLOR=#5f497a] Moderator Issue and Dispute Report Form:[/COLOR][COLOR=#1d1b10] [URL=https://docs.google.com/forms/d/1kJ0t3zNadfoM7BhtkJJUaslUNV4TZ9GeO9Zon4pcD8Y/viewform?usp=send_form]Click Here![/URL][/COLOR][/B]"
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	if string.match(message, "!prize") then
		print ("Running rtfw for:", message)
		sendMsg = "[B][COLOR=#5f497a]HKG Prizing Inquiry Form:[/COLOR][COLOR=#1d1b10] [URL=https://docs.google.com/forms/d/1LyXphBENGQr6lqfm-Ar2bq3WKgH2W_W_7XurrZzCkM4/viewform]Click Here![/URL][/COLOR][/B]"
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	if string.match(message, "!random") then
		print ("Running rtfw for:", message)
		sendMsg = ""
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
	if string.match(message, "!nix") then
		print ("Running rtfw for:", message)
		sendMsg = "[color=#FF0000]I[/color] [color=#FFDA00]l[/color][color=#B6FF00]o[/color][color=#48FF00]v[/color][color=#00FF24]e[/color] [color=#00FEFF]N[/color][color=#0091FF]i[/color][color=#0024FF]x[/color] [color=#B600FF]<[/color][color=#FF00DA]3[/color] "
		ts3.requestSendChannelTextMsg(serverConnectionHandlerID, sendMsg, channel)
	end
end

lmgtfy_events = {
	onTextMessageEvent = onTextMessageEvent
}
