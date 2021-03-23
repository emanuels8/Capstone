# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
User.create!(username: "test", email: "test@test.com", password: "password")
User.create!(username: "emanuel", email: "emanuel@test.com", password: "password")
User.create!(username: "random", email: "random@test.com", password: "password")
User.create!(username: "admin", email: "admin@test.com", password: "password")

Game.create!(name: "Valheim", price: 19.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/apps/892970/header.jpg?t=1613147226", description: "A battle-slain warrior, the Valkyries have ferried your soul to Valheim, the tenth Norse world. Besieged by creatures of chaos and ancient enemies of the gods, you are the newest custodian of the primordial purgatory, tasked with slaying Odin’s ancient rivals and bringing order to Valheim. Key features: Huge procedurally-generated world - explore and inhabit mystical lands, from
  mysteriousforests to imposing snow-topped mountain ranges and stunning meadows, complete with their own
  creatures of legend to battle and wildlife to hunt. Co-op PvE (2-10 players) - - Whether you want to
  brave the lands alone or venture with trusted allies, Valheim supports independent, player-hosted
  servers and unlimited world creation. We recommend playing co-op with 3-5 players. Punishing dodge and
  block based combat system with a wide range of weapons Build and sail ships - from flimsy rafts to
  imposing warships, build legendary vessels to conquer the seas and discover new lands. Summon and defeat
  vengeful primordial bosses of myth and legend, and collect trophies to progress and craft new powerful
  items Flexible house and base building system - raise mead halls, farms, settlements outposts, castles
  and more. Intuitive item crafting - forge the finest weapons and armour, and craft food and mead.
  Dedicated server- for players who want to run a persistent server.

Your trials begin at the disarmingly peaceful centre of Valheim, but the gods reward the brave and glory awaits. Venture forth through imposing forests and snow-capped mountains, explore and harvest more valuable materials to craft deadlier weapons, sturdier armor, viking strongholds and outposts. Build a mighty longship and sail the great oceans in search of exotic lands … but be wary of sailing too far...
")
Game.create!(name: "The Elder Scrolls Online", price: 19.99, cover_art: "https://cdn.akamai.steamstatic.com/steam/apps/306130/header.jpg?t=1616079325", description: "Game Description")
Game.create!(name: "Borderlands 3", price: 19.79, cover_art: "https://cdn.akamai.steamstatic.com/steam/apps/397540/header.jpg?t=1611688304", description: "Game Description")
Game.create!(name: "Crusader Kings III", price: 49.99, cover_art: "https://cdn.akamai.steamstatic.com/steam/apps/1158310/header.jpg?t=1615973192", description: "Game Description")
Game.create!(name: "League Of Legends", price: 0.00, cover_art: "https://www.theindianwire.com/wp-content/uploads/2020/08/league-of-legends.jpg", description: "League of Legends is a MOBA (Multiplayer Online Battle Arena) type of game. Two teams of 3 or 5 players battle each other on a chosen map. The game's objective is to destroy the key building in enemy base - the Nexus. Reaching that goal is not as simple as it may seem. The gameplay combines use of skill and tactics, and there are many roads to victory. There are plenty of things that a player needs to keep an eye on, such as map visibility, enemies spotted on the lane, as well as those who may suddenly appear on the frontline. Outnumbering your opponent may often turn out to be the key to success. LoL offers three game modes: Classic (maps: Summoner's Rift and Twisted Treeline), Dominion (The Crystal Scar), and ARAM (Howling Abyss), which are detailed further in the guide.")
Game.create!(name: "Valorant", price: 0.00, cover_art: "https://static.wikia.nocookie.net/valorant/images/8/80/Valorant_Cover_Art.jpg", description: "Game Description")
Game.create!(name: "OUTRIDERS", price: 59.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/subs/504022/header_586x192.jpg?t=1611762226", description: "Game Description")
Game.create!(name: "Breathedge", price: 24.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/apps/738520/header.jpg?t=1614276217", description: "Game Description")

Game.create!(name: "Persona® 5 Strikers", price: 59.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/apps/1382330/header.jpg?t=1614057973", description: "Game Description")
Game.create!(name: "Phasmophobia", price: 13.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/apps/739630/header.jpg?t=1613740031", description: "Game Description")
Game.create!(name: "Destroy All Humans!", price: 14.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/apps/803330/header.jpg?t=1614105177", description: "Game Description")

Game.create!(name: "Warhammer 40,000: Gladius Complete Edition", price: 124.99, cover_art: "https://cdn.cloudflare.steamstatic.com/steam/bundles/9211/seotwyp6z1yjpflq/header_586x192.jpg?t=1547484533", description: "Game Description")

Game.create!(name: "Apex Legends", price: 0.00, cover_art: "https://britgamer.s3.eu-west-1.amazonaws.com/2020-04/apex-legends-banner.jpg", description: "Game Description")

Game.create!(name: "Tom Clancy's Rainbow Six® Siege", price: 19.99, cover_art: "https://e.snmc.io/lk/lv/x/e2ebedd6224fe5328ee00f1e5c123734/5276026", description: "Game Description")

Game.create!(name: "Counter-Strike: Global Offensive", price: 0.00, cover_art: "https://i2.wp.com/5ergiveaways.com/wp-content/uploads/2019/06/Twitch-Cover.png?fit=1200%2C380&ssl=1", description: "Game Description")

Genre.create!(name: "Puzzle")
Genre.create!(name: "Platform")
Genre.create!(name: "FPS")
Genre.create!(name: "Maze")
Genre.create!(name: "Quest")
Genre.create!(name: "MOBA")
Genre.create!(name: "RPG")
Genre.create!(name: "Multi Player")
Genre.create!(name: "Singleplayer")
Genre.create!(name: "Free to Play")
Genre.create!(name: "Indie")
Genre.create!(name: "Survival")

Review.create!(user_id: 1, game_id: 1, description: " The game is good", rating: 5)
Review.create!(user_id: 2, game_id: 2, description: " Addicting", rating: 5)
Review.create!(user_id: 2, game_id: 3, description: " worse version of cs:go", rating: 2)
Review.create!(user_id: 1, game_id: 2, description: " worse version of dota", rating: 1)
Review.create!(user_id: 4, game_id: 6, description: " Anime the game", rating: 4)
Review.create!(user_id: 4, game_id: 7, description: " My favorite streamer game", rating: 5)
Review.create!(user_id: 4, game_id: 8, description: " Who plays this ?", rating: 1)

System.create!(name: "PlayStation")
System.create!(name: "PlayStation2")
System.create!(name: "PlayStation3")
System.create!(name: "PlayStation4")
System.create!(name: "PlayStation5")
System.create!(name: "Xbox")
System.create!(name: "Xbox 360")
System.create!(name: "Xbox one")
System.create!(name: "Xbox series x")
System.create!(name: "Ninetendo Gamecube")
System.create!(name: "N 64")
System.create!(name: "Ninetendo wii")
System.create!(name: "Ninetendo wii U")
System.create!(name: "Ninetendo Switch")
System.create!(name: "PC")

GameGenre.create!(game_id: 1, genre_id: 12)
GameGenre.create!(game_id: 1, genre_id: 8)
GameGenre.create!(game_id: 2, genre_id: 5)
GameGenre.create!(game_id: 2, genre_id: 7)
GameGenre.create!(game_id: 4, genre_id: 7)
GameGenre.create!(game_id: 3, genre_id: 7)
GameGenre.create!(game_id: 12, genre_id: 3)
GameGenre.create!(game_id: 13, genre_id: 3)
GameGenre.create!(game_id: 14, genre_id: 3)
GameGenre.create!(game_id: 6, genre_id: 3)
GameGenre.create!(game_id: 12, genre_id: 8)
GameGenre.create!(game_id: 13, genre_id: 8)
GameGenre.create!(game_id: 14, genre_id: 8)
GameGenre.create!(game_id: 11, genre_id: 8)
GameGenre.create!(game_id: 5, genre_id: 8)
GameGenre.create!(game_id: 12, genre_id: 6)

GameSystem.create!(game_id: 1, system_id: 15)
GameSystem.create!(game_id: 2, system_id: 15)
GameSystem.create!(game_id: 3, system_id: 15)
GameSystem.create!(game_id: 6, system_id: 8)
GameSystem.create!(game_id: 6, system_id: 4)
GameSystem.create!(game_id: 6, system_id: 15)
