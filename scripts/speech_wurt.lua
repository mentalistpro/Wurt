return{
	ACTIONFAIL =
	{
        REPAIR =
        {
            WRONGPIECE = "That look wrong, glorp.",
        },
        BUILD =
        {
            MOUNTED = "Grrr, can't reach!",
            HASPET = "Don't need 'nother pet, glort.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Me not crazy, florp.",
			GENERIC = "Nope.",
			NOBITS = "No fluffs left to take.",
--fallback to speech_wilson.lua             REFUSE = "only_used_by_woodie",
		},
		STORE =
		{
			GENERIC = "It full.",
			NOTALLOWED = "Can't, glorp.",
			INUSE = "Gotta wait.",
            NOTMASTERCHEF = "Fancy cooking man can do it, florpt.",
		},
        CONSTRUCT =
        {
            INUSE = "Grrr, have to wait.",
            NOTALLOWED = "Nuh-uh.",
            EMPTY = "Need some buildy things.",
            MISMATCH = "Glort? Not right?",
        },
		RUMMAGE =
		{	
			GENERIC = "Nuh-uh.",
			INUSE = "You find something good?",
            NOTMASTERCHEF = "Fancy cooking man can do it, florpt.",
		},
		UNLOCK =
        {
--fallback to speech_wilson.lua         	WRONGKEY = "I can't do that.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Grrr, key not work!",
        	KLAUS = "Not good time, florp!",
			QUAGMIRE_WRONGKEY = "Grrr, key not work!",
        },
		ACTIVATE = 
		{
			LOCKED_GATE = "Grrr... want in!",
		},
        COOK =
        {
            GENERIC = "Don't wanna, glort.",
            INUSE = "Mmm... what that smell?",
            TOOFAR = "It way over there!",
        },
        
        --warly specific action
--fallback to speech_wilson.lua 		DISMANTLE =
--fallback to speech_wilson.lua 		{
--fallback to speech_wilson.lua 			COOKING = "only_used_by_warly",
--fallback to speech_wilson.lua 			INUSE = "only_used_by_warly",
--fallback to speech_wilson.lua 			NOTEMPTY = "only_used_by_warly",
--fallback to speech_wilson.lua         },
        FISH_OCEAN =
		{
			TOODEEP = "Come closer, fishes! Won't hurt you!",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "Don't need this one for pond, flort.",
		},
        --wickerbottom specific action
--fallback to speech_wilson.lua         READ =
--fallback to speech_wilson.lua         {
--fallback to speech_wilson.lua             GENERIC = "only_used_by_wickerbottom",
--fallback to speech_wilson.lua             NOBIRDS = "only_used_by_wickerbottom"
--fallback to speech_wilson.lua         },

        GIVE =
        {
            GENERIC = "Nuh-uh.",
            DEAD = "They don't need it, flort.",
            SLEEPING = "Wake up! Have present for you!",
            BUSY = "Flurmph, too busy to take present?",
            ABIGAILHEART = "Aw... sorry Abby-gill.",
            GHOSTHEART = "Errmmm... don't think so, florp.",
            NOTGEM = "Don't fit.",
            WRONGGEM = "Glorp? This not right gem.",
            NOTSTAFF = "Don't look right.",
            MUSHROOMFARM_NEEDSSHROOM = "Need to find mushroom!",
            MUSHROOMFARM_NEEDSLOG = "Oooh, need creepy log for this.",
            SLOTFULL = "It already full.",
            FOODFULL = "Something cooking already.",
            NOTDISH = "Blegh!!",
            DUPLICATE = "Oh! Knew that one already!",
            NOTSCULPTABLE = "Can't shape that!",
            NOTATRIUMKEY = "Don't look right.",
            CANTSHADOWREVIVE = "Don't work.",
            WRONGSHADOWFORM = "That not look right...",
            NOMOON = "Not gonna work, need moon power.",
			PIGKINGGAME_MESSY = "Fluuurph... need to clean first...",
			PIGKINGGAME_DANGER = "Florp! No time for game!",
			PIGKINGGAME_TOOLATE = "Aw... too late.",
        },
        GIVETOPLAYER =
        {
            FULL = "They already have lots!",
            DEAD = "Don't think they need this, glorp.",
            SLEEPING = "Wake up!! Got thing for you!",
            BUSY = "Take thing! TAKE THING!!",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "They already have lots!",
            DEAD = "Don't think they need this, glorp.",
            SLEEPING = "Wake up!! Got stuff for you!",
            BUSY = "Take stuff! TAKE STUFF!!",
        },
        WRITE =
        {
            GENERIC = "Nuh-uh.",
            INUSE = "Me next! Me next!",
        },
        DRAW =
        {
            NOIMAGE = "Glort... forget what to draw.",
        },
        CHANGEIN =
        {
            GENERIC = "Don't wanna, florp.",
            BURNING = "Nope!",
            INUSE = "Gotta wait...",
        },
        ATTUNE =
        {
            NOHEALTH = "Feel bad ... do later.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "They look mad...",
            INUSE = "Let me on, florpt!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "It too mad right now.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Knew that already, florp!",
            CANTLEARN = "Flurph... this make head hurt.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "Map don't match this place...",
        },
        WRAPBUNDLE =
        {
            EMPTY = "Nothing for wrapping, florp.",
        },
        PICKUP =
        {
			RESTRICTION = "Don't wanna.",
			INUSE = "Flurmph. Gotta wait.",
        },
        SLAUGHTER =
        {
            TOOFAR = "Grrr... come back!",
        },
        REPLATE =
        {
            MISMATCH = "Not right dish, florpt.", 
            SAMEDISH = "Already got dish!", 
        },
        SAIL =
        {
        	REPAIR = "It good enough.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Not right time!",
            BAD_TIMING1 = "Arms tired, florp.",
            BAD_TIMING2 = "Rowing hard...",
        },
        LOWER_SAIL_FAIL =
        {
            "Glrrrpphh!!",
            "Grrr... go down!",
            "Didn't work...",
        },
        BATHBOMB =
        {
            GLASSED = "Water too hard.",
            ALREADY_BOMBED = "Water hot enough, florp.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Oh! Knew that one already!",
		},
		COMPARE_WEIGHABLE =
		{
			TOO_SMALL = "Glurph... this fish too small!",
		},
	},
	ACTIONFAIL_GENERIC = "Grrr... can't do it, florpt.",
	ANNOUNCE_BOAT_LEAK = "Yay! Boat getting wetter!",
	ANNOUNCE_BOAT_SINK = "...Maybe boat too wet now.",
	ANNOUNCE_DIG_DISEASE_WARNING = "Look better?",
	ANNOUNCE_PICK_DISEASE_WARNING = "Gluurgh... smell bad.",
	ANNOUNCE_ADVENTUREFAIL = "Grrr, messed up!",
    ANNOUNCE_MOUNT_LOWHEALTH = "Big fuzzy look hurt...",

    --waxwell and wickerbottom specific strings
--fallback to speech_wilson.lua     ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
--fallback to speech_wilson.lua     ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
--fallback to speech_wilson.lua     ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
--fallback to speech_wilson.lua     ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",

	ANNOUNCE_BEES = "Glorp! Buzzy stingers!",
	ANNOUNCE_BOOMERANG = "Glorp! Come-back stick hurts.",
	ANNOUNCE_CHARLIE = "Me think saw scary night lady!",
	ANNOUNCE_CHARLIE_ATTACK = "GLORP! GO AWAY!",
--fallback to speech_wilson.lua 	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific 
	ANNOUNCE_COLD = "Flrrrr... c-cold...",
	ANNOUNCE_HOT = "Drying... up...",
	ANNOUNCE_CRAFTING_FAIL = "Nuh-uh, need more things.",
	ANNOUNCE_DEERCLOPS = "Glurp... me know that sound...",
	ANNOUNCE_CAVEIN = "Gloooorrp! Rocks falling!!",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"Glooorrrpp!!",
		"Why ground shaking?!",
		"Something moving!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Take this, scary lady.",
        "This for you, florp.",
        "This make you happy now, florp?",
	},
	ANNOUNCE_SACREDCHEST_YES = "Yay!",
	ANNOUNCE_SACREDCHEST_NO = "Grrr... mean box.",
    ANNOUNCE_DUSK = "Sun going to sleep soon.",
    
    --wx-78 specific
--fallback to speech_wilson.lua     ANNOUNCE_CHARGE = "only_used_by_wx78",
--fallback to speech_wilson.lua 	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Mmm-mmmm!",
		PAINFUL = "Glurph... belly hurts...",
		SPOILED = "Blegh... gone bad.",
		STALE = "Tastes funny, florp.",
		INVALID = "Not for eating.",
        YUCKY = "Nuh-UH.",
        
        --Warly specific ANNOUNCE_EAT strings
--fallback to speech_wilson.lua 		COOKED = "only_used_by_warly",
--fallback to speech_wilson.lua 		DRIED = "only_used_by_warly",
--fallback to speech_wilson.lua         PREPARED = "only_used_by_warly",
--fallback to speech_wilson.lua         RAW = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_1 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_2 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_3 = "only_used_by_warly",
--fallback to speech_wilson.lua 		SAME_OLD_4 = "only_used_by_warly",
--fallback to speech_wilson.lua         SAME_OLD_5 = "only_used_by_warly",
--fallback to speech_wilson.lua 		TASTY = "only_used_by_warly",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "Fluurph... Hrrrgh...",
        "Tired...",
        "Gluuurph!",
        "Me too little... for carry... heavy thing!",
        "Don't... like... this...",
        "(Splutter)",
        "Flurrrgh...!",
        "Someone... bigger... help...?",
        "RRRRGH!",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"Gl-glorp!!",
		"Something wrong!",
		"Need to go now, florp!",
	},
    ANNOUNCE_RUINS_RESET = "D-don't like these monsters, florp!",
    ANNOUNCE_SNARED = "GLORP!",
    ANNOUNCE_REPELLED = "Why not hit?!",
	ANNOUNCE_ENTER_DARK = "It dark in here...",
	ANNOUNCE_ENTER_LIGHT = "Light!!",
	ANNOUNCE_FREEDOM = "Buh-bye!",
	ANNOUNCE_HIGHRESEARCH = "Head feels so full of smarts, florp!",
	ANNOUNCE_HOUNDS = "Glurp... doggies coming...",
	ANNOUNCE_WORMS = "Glurt?",
	ANNOUNCE_HUNGRY = "Want food!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Where these footprints go?",
	ANNOUNCE_HUNT_LOST_TRAIL = "No more prints, flort.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Dirt too wet for tracks, have mud bath instead!",
	ANNOUNCE_INV_FULL = "Don't have enough pockets, florp.",
	ANNOUNCE_KNOCKEDOUT = "Glurgh... head hurt...",
	ANNOUNCE_LOWRESEARCH = "Don't get it...",
	ANNOUNCE_MOSQUITOS = "Gluuurph! Shoo, bugs!",
    ANNOUNCE_NOWARDROBEONFIRE = "Nuh-uh.",
    ANNOUNCE_NODANGERGIFT = "Wanna open present... but not safe.",
    ANNOUNCE_NOMOUNTEDGIFT = "Need to get down first.",
	ANNOUNCE_NODANGERSLEEP = "No sleepy-time now, florp!",
	ANNOUNCE_NODAYSLEEP = "Too bright out to sleep!",
	ANNOUNCE_NODAYSLEEP_CAVE = "Not sleepy, florp.",
	ANNOUNCE_NOHUNGERSLEEP = "Need food, then sleepy-time.",
	ANNOUNCE_NOSLEEPONFIRE = "Not gonna sleep there, glort.",
	ANNOUNCE_NODANGERSIESTA = "Too scary for nap!",
	ANNOUNCE_NONIGHTSIESTA = "Don't want nap, want bedtime!",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Glurp... too scary in here...",
	ANNOUNCE_NOHUNGERSIESTA = "Belly too rumbly!",
	ANNOUNCE_NODANGERAFK = "Gotta be careful, florp!",
	ANNOUNCE_NO_TRAP = "Easy, florp!",
	ANNOUNCE_PECKED = "Ow! OW! Ouchie!",
	ANNOUNCE_QUAKE = "Ground shaking!",
	ANNOUNCE_RESEARCH = "Head getting full of smarts, flurp!",
	ANNOUNCE_SHELTER = "Why not play in rain, florp?",
	ANNOUNCE_THORNS = "Ouchie!",
	ANNOUNCE_BURNT = "Glorpt!! Hot!!",
	ANNOUNCE_TORCH_OUT = "Can still see, florp!",
	ANNOUNCE_THURIBLE_OUT = "Aw, no more.",
	ANNOUNCE_FAN_OUT = "Glurp... me didn't break it!!",
    ANNOUNCE_COMPASS_OUT = "Spinny pointer broken. Didn't do it, florp!!",
	ANNOUNCE_TRAP_WENT_OFF = "....Glop.",
	ANNOUNCE_UNIMPLEMENTED = "Trap not ready!",
	ANNOUNCE_WORMHOLE = "Wheeeeee!",
	ANNOUNCE_TOWNPORTALTELEPORT = "Glorp... felt weird!",
	ANNOUNCE_CANFIX = "\nCan fix easy, florp!",
	ANNOUNCE_ACCOMPLISHMENT = "Did it!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Did it!",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Plant still hungry.",
	ANNOUNCE_TOOL_SLIP = "Claws too slimy, florp.",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "GLORPT! Almost got sparky!",
	ANNOUNCE_TOADESCAPING = "Don't leave!",
	ANNOUNCE_TOADESCAPED = "Come back toad!!",


	ANNOUNCE_DAMP = "Ahh... wetter feel better, florp!",
	ANNOUNCE_WET = "Mermfolk love water, florp!",
	ANNOUNCE_WETTER = "Feels good on scales!",
	ANNOUNCE_SOAKED = "Aaah, splish-splash!",

	ANNOUNCE_WASHED_ASHORE = "Had good swim!",

    ANNOUNCE_DESPAWN = "Feel cold...",
	ANNOUNCE_BECOMEGHOST = "gloOooOooorp!!",
	ANNOUNCE_GHOSTDRAIN = "Gluurrr... glorph... GLORRPP...",
	ANNOUNCE_PETRIFED_TREES = "Glurp... trees getting scary...",
	ANNOUNCE_KLAUS_ENRAGE = "Aaah! Scary scary!!",
	ANNOUNCE_KLAUS_UNCHAINED = "GLOOOORRP!! Belly has teeth!",
	ANNOUNCE_KLAUS_CALLFORHELP = "It calling friends!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "Something in there?",
		GLASS_LOW = "Almost done, florp!",
		GLASS_REVEAL = "Free!",
		IDOL_MED = "Something in there?",
		IDOL_LOW = "Almost done, florp!",
		IDOL_REVEAL = "Free!",
		SEED_MED = "Something in there?",
		SEED_LOW = "Almost done, florp!",
		SEED_REVEAL = "Free!",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "G-glurp... saw something...",
	ANNOUNCE_BRAVERY_POTION = "Me was never scared, florp!",
	ANNOUNCE_MOONPOTION_FAILED = "Awww... nothing happen.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "Should share with others, florp.",
	ANNOUNCE_WINTERS_FEAST_BUFF = "Oooooh, feel sparkly!",
	ANNOUNCE_IS_FEASTING = "So much food, flurt!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "Hey! Where sparkles go?",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Us friends now... florp?",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "All better, flurp!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "G-glurp... that was scary.",

    ANNOUNCE_FLARE_SEEN = "Fire in sky??",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Someone coming?",

    --willow specific
--fallback to speech_wilson.lua 	ANNOUNCE_LIGHTFIRE =
--fallback to speech_wilson.lua 	{
--fallback to speech_wilson.lua 		"only_used_by_willow",
--fallback to speech_wilson.lua     },

    --winona specific
--fallback to speech_wilson.lua     ANNOUNCE_HUNGRY_SLOWBUILD = 
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua 	    "only_used_by_winona",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_HUNGRY_FASTBUILD = 
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua 	    "only_used_by_winona",
--fallback to speech_wilson.lua     },

    --wormwood specific
--fallback to speech_wilson.lua     ANNOUNCE_KILLEDPLANT = 
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_GROWPLANT = 
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_BLOOMING = 
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wormwood",
--fallback to speech_wilson.lua     },

    --wortox specfic
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_EMPTY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_FEW =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_MANY =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },
--fallback to speech_wilson.lua     ANNOUNCE_SOUL_OVERLOAD =
--fallback to speech_wilson.lua     {
--fallback to speech_wilson.lua         "only_used_by_wortox",
--fallback to speech_wilson.lua     },

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Glurgh, that not gonna taste good together.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "Oops...",
    QUAGMIRE_ANNOUNCE_LOSE = "We win! No? Glurp...",
    QUAGMIRE_ANNOUNCE_WIN = "Yay! Going back now, bye-bye sky mouth!",

    ANNOUNCE_ROYALTY =
    {
        "Big important!",
        "Crowny head!",
        "Any fairy stories about you, florp?",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Sparky!!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Wanna fight!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Me tougher than you!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Florp...? Why me suddenly wanna do chores?",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Glurph... drying up...",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Awwwwww...",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Don't feel like fighting anymore.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "G-glorp, don't hit!",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Tired...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Yay!! Feel wetter already, flurp!",
    
	ANNOUNCE_OCEANFISHING_LINESNAP = "Glurph! Hey!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Line too loose, fish gonna get away!",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "No! Come back, fishy!",
	ANNOUNCE_OCEANFISHING_BADCAST = "Glurgh... this hard.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE = 
	{
		"Fish! Come here fish!",
		"Doo-dee-doo-dee-dum...",
		"Where the fishies?",
		"Glurph. This taking too long.",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "Mermfolk have new King!",
    ANNOUNCE_KINGDESTROYED = "Was bad King, will find better one!",
    ANNOUNCE_CANTBUILDHERE_THRONE = "This no place for swamp King!",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "Pretty house should go in pretty swamp!",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "No, no! Guards defend swamp!",
    ANNOUNCE_READ_BOOK = 
    {
        BOOK_SLEEP = "Wuh... wunce? Once! U-up... on... uh...",
        BOOK_BIRDS = "This one have pictures of birdies!",
        BOOK_TENTACLES =  "This a good one!",
        BOOK_BRIMSTONE = "Flurrgh, wanna know how it ends!",
        BOOK_GARDENING = "So many hard words...",
    },

	BATTLECRY =
	{
		GENERIC = "Not scared of you, florp!",
		PIG = "ENEMY OF MERMFOLK!",
		PREY = "Stay... stay!",
		SPIDER = "Glurph, yucky spider!",
		SPIDER_WARRIOR = "Go away fighty spider!",
		DEER = "Glurph, go away!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "Pbbbbbbth!",
		PIG = "Bad Pigman got away.",
		PREY = "Come back, florp!",
		SPIDER = "Oh... might be friend of Webby boy.",
		SPIDER_WARRIOR = "Don't like you anyway, flurt!",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Scale-less say this what brought them here?",
        MULTIPLAYER_PORTAL_MOONROCK = "It made of moon stuff!",
        MOONROCKIDOL = "It looking at me.",
        CONSTRUCTION_PLANS = "Look easy to build!",

        ANTLION =
        {
            GENERIC = "What you want?",
            VERYHAPPY = "She look much happier!",
            UNHAPPY = "Glorp, don't be mad!",
        },
        ANTLIONTRINKET = "Know someone who'd like this, florp!",
        SANDSPIKE = "Aaah! Spiky!",
        SANDBLOCK = "Gloorph!",
        GLASSSPIKE = "Would look better with Pig head on it, florp!",
        GLASSBLOCK = "Look very breakable, florp.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="It not quite as ugly as most flowers.",
            LONG = "Pretty.",
            MEDIUM = "Hmm?",
            SOON = "Something happening!",
            HAUNTED_POCKET = "Glorp! Down flower!",
            HAUNTED_GROUND = "Shouldn't be here, flurp...",
        },

        BALLOONS_EMPTY = "Look chewy, florp.",
        BALLOON = "Want one!!",

        BERNIE_INACTIVE =
        {
            BROKEN = "Aww...",
            GENERIC = "No playing anymore?",
        },

        BERNIE_ACTIVE = "Wanna play with it!",
        BERNIE_BIG = "Fun toy, flurp!",

        BOOK_BIRDS = "Read this one, Wicker-lady!",
        BOOK_TENTACLES = "Remind me of home, florp.",
        BOOK_GARDENING = "A... appled...? (Sigh)",
        BOOK_SLEEP = "Want bedtime story!",
        BOOK_BRIMSTONE = "Where Wicker-lady? Want to know what happen next!",

        PLAYER =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "Grrr... don't trust %s.",
            MURDERER = "G...glorp... %s a killer!!",
            REVIVER = "Didn't need help! ...But thanks, florp.",
            GHOST = "You look spooky, %s.",
            FIRESTARTER = "You gonna burn everything up, %s!!",
        },
        WILSON =
        {
            GENERIC = "Hello funny hair man!",
            ATTACKER = "Not very nice, flort!",
            MURDERER = "Knew scale-less not to be trusted!",
            REVIVER = "That \"science\" pretty good, florp!",
            GHOST = "Hee-hee, you look silly!",
            FIRESTARTER = "This for \"science\"?",
        },
        WOLFGANG =
        {
            GENERIC = "Hello muscly moustache man!",
            ATTACKER = "Not fair, you way bigger!",
            MURDERER = "Grrr, you just a bully!",
            REVIVER = "This mean you not scared of me anymore?",
            GHOST = "Don't be scared, will find heart for you!",
            FIRESTARTER = "That was bad idea, flort.",
        },
        WAXWELL =
        {
            GENERIC = "You the one other scale-less don't like?",
            ATTACKER = "You a bad man!!",
            MURDERER = "Now see why other scale-less don't like you, flort.",
            REVIVER = "You not seem so bad, florp.",
            GHOST = "Don't be grumpy, will help!",
            FIRESTARTER = "He did it! He did it!",
        },
        WX78 =
        {
            GENERIC = "Hello short Ironfolk.",
            ATTACKER = "Ow! Stop it, flort!",
            MURDERER = "This mean war!",
            REVIVER = "Wasn't sure you would...",
            GHOST = "You not look very happy like that.",
            FIRESTARTER = "Think you having too much fun, flort.",
        },
        WILLOW =
        {
            GENERIC = "Hello fire lady!",
            ATTACKER = "You not so tough, flort!",
            MURDERER = "Grrrr, bad lady!",
            REVIVER = "You actually pretty nice, florp.",
            GHOST = "Me play with bear while you--? Fine, will find heart.",
            FIRESTARTER = "She seem happy.",
        },
        WENDY =
        {
            GENERIC = "Hello sad girl, how sister today?",
            ATTACKER = "Hey! Stop it, florp!",
            MURDERER = "You only wanna play with ghosts?",
            REVIVER = "Said hi to Abby-gill for you, flort.",
            GHOST = "Do you... really want heart?",
            FIRESTARTER = "Why you do that?",
        },
        WOODIE =
        {
            GENERIC = "Hello wood choppy man!",
            ATTACKER = "Go find tree to hit instead!",
            MURDERER = "Shoulda known choppy man was killer!",
            REVIVER = "Choppy man is nice.",
            GHOST = "Need help, florp?",
            BEAVER = "Where choppy man go?!",
            BEAVERGHOST = "Will find heart, if you bring back wood choppy man!",
            MOOSE = "Where choppy man go?!",
            MOOSEGHOST = "Will find heart, if you bring back wood choppy man!",
            GOOSE = "Where choppy man go?!",
            GOOSEGHOST = "Will find heart, if you bring back wood choppy man!",
            FIRESTARTER = "Thought you like chopping things, not burning?",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Can you read me story, florp?",
            ATTACKER = "Why mad? Didn't do anything!",
            MURDERER = "Trusted you!",
            REVIVER = "Thank you very much! (Me say that right?)",
            GHOST = "Will get you heart right away!",
            FIRESTARTER = "That not where campfire goes.",
        },
        WES =
        {
            GENERIC = "Hello clown man.",
            ATTACKER = "Glorph, go away!",
            MURDERER = "Scale-less bad, never shoulda left swamp!",
            REVIVER = "Oh... thanks, flort.",
            GHOST = "Look paler than usual, florp.",
            FIRESTARTER = "You a strange man, flort.",
        },
        WEBBER =
        {
            GENERIC = "Hi Webby boy!",
            ATTACKER = "Why you being so mean?",
            MURDERER = "Thought you was friend!",
            REVIVER = "Knew we was friends!",
            GHOST = "Don't be sad, will get heart!",
            FIRESTARTER = "You gonna get in trouble!",
        },
        WATHGRITHR =
        {
            GENERIC = "Hello Viking lady!",
            ATTACKER = "Grrr, Viking lady want to fight??",
            MURDERER = "Glorp! Me not to be hunted!!",
            REVIVER = "....Thank you, flort.",
            GHOST = "Ooooh, you look spooky!",
            FIRESTARTER = "Thought that was fire lady's job, flort.",
        },
        WINONA =
        {
            GENERIC = "You know the night lady?",
            ATTACKER = "That not safe!",
            MURDERER = "You broke trust!!",
            REVIVER = "All fixed up!",
            GHOST = "Thought you never take breaks, flort?",
            FIRESTARTER = "Maybe she tired of fixing things, florp.",
        },
        WORTOX =
        {
            GENERIC = "What an \"imp\"?",
            ATTACKER = "Glorph, you so mean!",
            MURDERER = "Knew you not to be trusted!",
            REVIVER = "This not a trick...?",
            GHOST = "You poofed right out of body!!",
            FIRESTARTER = "He look very scary right now, flurp.",
        },
        WORMWOOD =
        {
            GENERIC = "Hi leafy!",
            ATTACKER = "Ow! You mean old weed!",
            MURDERER = "We not friends anymore, flort!",
            REVIVER = "You a good plant!",
            GHOST = "Stay! Will get help!",
            FIRESTARTER = "Glorp, that dangerous!",
        },
        WARLY =
        {
            GENERIC = "Hello fancy cook man!",
            ATTACKER = "Glurph, thought you were nice!",
            MURDERER = "You not friend at all!",
            REVIVER = "You... help me, flort?",
            GHOST = "Nooo! Who gonna cook yummy things for me...",
            FIRESTARTER = "He wanna cook everything!",
        },

        WURT =
        {
            GENERIC = "Hello me!",
            ATTACKER = "Mermfolk should stick together!",
            MURDERER = "Glurp... am own worst enemy!",
            REVIVER = "Can always count on me!",
            GHOST = "There gotta be heart around somewhere.",
            FIRESTARTER = "Stop! You gonna get us in trouble!",
        },

        MIGRATION_PORTAL =
        {
            GENERIC = "Where this go to?",
            OPEN = "Wonder what on other side...",
            FULL = "Too busy.",
        },
        GLOMMER = 
        {
            GENERIC = "Hee-hee, goopy bug thing!",
            SLEEPING = "Nighty night, buggy.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "What so special about this flower, florp?",
            DEAD = "Almost sad it gone.",
        },
        GLOMMERWINGS = "Big bug had weird tiny wings, flurt.",
        GLOMMERFUEL = "Bug goop.",
        BELL = "Make nice sound.",
        STATUEGLOMMER =
        {
            GENERIC = "Rock look like weird bug.",
            EMPTY = "Oops... didn't do it!",
        },

        LAVA_POND_ROCK = "Rock.",

		WEBBERSKULL = "That not where bone belong!",
		WORMLIGHT = "Big glowy berry!",
		WORMLIGHT_LESSER = "Little glowy...",
		WORM =
		{
		    PLANT = "Oooh, pretty fruit...",
		    DIRT = "Dirt pile!",
		    WORM = "WORM!!",
		},
        WORMLIGHT_PLANT = "Pretty......",
		MOLE =
		{
			HELD = "Quit wiggling, flort!",
			UNDERGROUND = "Where you going?",
			ABOVEGROUND = "So nosey!",
		},
		MOLEHILL = "Mole home.",
		MOLEHAT = "Has nice stench to it, florp.",

		EEL = "Hello long fishy!",
		EEL_COOKED = "No!!",
		UNAGI = "That not what you do with fish, flort!",
		EYETURRET = "Glurp, won't hit me... right?",
		EYETURRET_ITEM = "Not sure this good idea...",
		MINOTAURHORN = "Mine now, flort!",
		MINOTAURCHEST = "Treasure?",
		THULECITE_PIECES = "Bitty bits.",
		POND_ALGAE = "Ooooh, slimy!",
		GREENSTAFF = "Has pretty green rock on it.",
		GIFT = "Present for me!",
        GIFTWRAP = "Why scale-less wrap things in more things?",
		POTTEDFERN = "This plant have little house.",
        SUCCULENT_POTTED = "Has a home now.",
		SUCCULENT_PLANT = "How you live in place like this?",
		SUCCULENT_PICKED = "Oop, broke it.",
		SENTRYWARD = "How it float like that?",
        TOWNPORTAL =
        {
			GENERIC = "Take me where friends are!",
			ACTIVE = "Ready, flort!",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "Go-stone!",
			ACTIVE = "Jump to friends!",
		},
        WETPAPER = "Got all soggy, flort.",
        WETPOUCH = "Found pond treasure!",
        MOONROCK_PIECES = "Moon made these?",
        MOONBASE =
        {
            GENERIC = "It want something?",
            BROKEN = "Someone broke it, flrot!",
            STAFFED = "Anything happen, florp?",
            WRONGSTAFF = "Don't look right.",
            MOONSTAFF = "Bright stick!",
        },
        MOONDIAL = 
        {
			GENERIC = "Special moon pond.",
			NIGHT_NEW = "Moon not swimming tonight?",
			NIGHT_WAX = "Grow big, moon!",
			NIGHT_FULL = "Big bouncy moon, florp!",
			NIGHT_WANE = "Moon look smaller tonight.",
			CAVE = "This not good spot.",
--fallback to speech_wilson.lua 			WEREBEAVER = "only_used_by_woodie", --woodie specific
        },
		THULECITE = "Look weird, florp...",
		ARMORRUINS = "Strong!",
		ARMORSKELETON = "Glorp! Look scary!",
		SKELETONHAT = "Glurph... head feel funny...",
		RUINS_BAT = "Clobbery!",
		RUINSHAT = "Queen Wurt!!",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "It seem safe.",
            WARN = "Getting weird, florp...",
            WAXING = "Something happening!",
            STEADY = "Staying the same,.",
            WANING = "It going away!",
            DAWN = "Over soon, over soon.",
            NOMAGIC = "Seem okay.",
		},
		BISHOP_NIGHTMARE = "Something wrong with it, glort!",
		ROOK_NIGHTMARE = "Glorp! What wrong with it?!",
		KNIGHT_NIGHTMARE = "Glurp, it has the bad stuff on it!",
		MINOTAUR = "Glurp... it look cranky.",
		SPIDER_DROPPER = "See you hiding up there, flort!",
		NIGHTMARELIGHT = "Don't like it, florp.",
		NIGHTSTICK = "Ooooh, bright!",
		GREENGEM = "Like this stone, florp.",
		MULTITOOL_AXE_PICKAXE = "That pretty smart, florp.",
		ORANGESTAFF = "Orangey rock stick!",
		YELLOWAMULET = "Feel warm...",
		GREENAMULET = "Help with building things!",
		SLURPERPELT = "Took its fur, florp.",	

		SLURPER = "Ha ha, tickly!",
		SLURPER_PELT = "Took its fur, florp.",
		ARMORSLURPER = "Good belt, glorp.",
		ORANGEAMULET = "It make me feel fancy, flurp.",
		YELLOWSTAFF = "Has pretty yellow rock on it.",
		YELLOWGEM = "There sunshine inside it.",
		ORANGEGEM = "Weird orangey rock",
        OPALSTAFF = "Rainbow light stick!",
        OPALPRECIOUSGEM = "There so many colors, flort!",
        TELEBASE = 
		{
			VALID = "Ready!",
			GEMS = "Something missing...",
		},
		GEMSOCKET = 
		{
			VALID = "Rock got all floaty.",
			GEMS = "Find sparkly rock to go in here.",
		},
		STAFFLIGHT = "Glorph! Burny light!",
        STAFFCOLDLIGHT = "It so cold!",

        ANCIENT_ALTAR = "Look real old.",

        ANCIENT_ALTAR_BROKEN = "It broken, flurp.",

        ANCIENT_STATUE = "Creepy.",

        LICHEN = "Cave food.",
		CUTLICHEN = "Crumbly.",

		CAVE_BANANA = "Mmm... good fruit, florp.",
		CAVE_BANANA_COOKED = "Yummy!",
		CAVE_BANANA_TREE = "See fruits up there!",
		ROCKY = "Hi!",
		
		COMPASS =
		{
			GENERIC="There spinny needle inside!",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "Big chomper.",
        ARMORSNURTLESHELL = "Sticky!",
        BAT = "Grrr!",
        BATBAT = "Whack! Whack!",
        BATWING = "No more bat.",
        BATWING_COOKED = "Gluurrggh...",
        BATCAVE = "Me not afraid, florp!",
        BEDROLL_FURRY = "Fluffy...",
        BUNNYMAN = "Don't like Bunnyman!",
        FLOWER_CAVE = "Useless flower, florph.",
        GUANO = "Bats poop too, florp.",
        LANTERN = "Glowy!",
        LIGHTBULB = "What you mean, \"don't put in your mouth\"?",
        MANRABBIT_TAIL = "He don't need it anymore, flurpt.",
        MUSHROOMHAT = "Keeps head nice and clammy!",
        MUSHROOM_LIGHT2 =
        {
            ON = "Oooh, pretty color!",
            OFF = "It supposed to do something?",
            BURNT = "It was so pretty, florp...",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Glowy!",
            OFF = "It in a funny shape, florp.",
            BURNT = "Didn't do it!",
        },
        SLEEPBOMB = "Hee-hee, nighty night!",
        MUSHROOMBOMB = "Glurp! Run away!",
        SHROOM_SKIN = "Oooh, had such nice skin!",
        TOADSTOOL_CAP =
        {
            EMPTY = "Hallooo? ANYBODY HOME?",
            INGROUND = "See you in there!",
            GENERIC = "What nice cap you have, flort.",
        },
        TOADSTOOL =
        {
            GENERIC = "Has pretty face, bad personality.",
            RAGE = "Think we made him mad, flort!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "Big mushroom!",
            BURNT = "Oops...",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Look kinda tasty, florp",
            BLOOM = "Something falling off it.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "It grow so big!",
            BLOOM = "Pretty!",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Short and stumpy.",
            BLOOM = "Floaty lights!",
        },
        MUSHTREE_TALL_WEBBED = "This one claimed by Spiderfolk",
        SPORE_TALL =
        {
            GENERIC = "Pretty!",
            HELD = "My floaty fluff now!",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Floaty!",
            HELD = "My floaty fluff now!",
        },
        SPORE_SMALL =
        {
            GENERIC = "It dancing!",
            HELD = "My floaty fluff now!",
        },
        RABBITHOUSE =
        {
            GENERIC = "Sniff... there someone inside...",
            BURNT = "Aww, wanted to eat that!",
        },
        SLURTLE = "Look like a friend, flort.",
        SLURTLE_SHELLPIECES = "Aw, it broke!",
        SLURTLEHAT = "My shell now!",
        SLURTLEHOLE = "Ooooh, slimy!",
        SLURTLESLIME = "Splodey loogies!",
        SNURTLE = "Has trustworthy face, florp.",
        SPIDER_HIDER = "Grrr, scaredy spider!!",
        SPIDER_SPITTER = "Glurph, spider loogies!!",
        SPIDERHOLE = "Spiderfolk hole!",
        SPIDERHOLE_ROCK = "All webby...",
        STALAGMITE = "Cave rock.",
        STALAGMITE_TALL = "Big cave rock",
        TREASURECHEST_TRAP = "Treasure!",

        TURF_CARPETFLOOR = "Fuzzy ground.",
        TURF_CHECKERFLOOR = "Ground bit.",
        TURF_DIRT = "Ground bit.",
        TURF_FOREST = "Ground bit.",
        TURF_GRASS = "Ground bit.",
        TURF_MARSH = "Ground bit.",
        TURF_METEOR = "Ground bit.",
        TURF_PEBBLEBEACH = "Ground bit.",
        TURF_ROAD = "Make ground walk-ier!",
        TURF_ROCKY = "Ground bit.",
        TURF_SAVANNA = "Ground bit.",
        TURF_WOODFLOOR = "Tree parts.",

		TURF_CAVE="Ground bit.",
		TURF_FUNGUS="Ground bit.",
		TURF_SINKHOLE="Ground bit.",
		TURF_UNDERROCK="Ground bit.",
		TURF_MUD="Ground bit.",

		TURF_DECIDUOUS = "Ground bit.",
		TURF_SANDY = "Ground bit.",
		TURF_BADLANDS = "Ground bit.",
		TURF_DESERTDIRT = "Ground bit.",
		TURF_FUNGUS_GREEN = "Ground bit.",
		TURF_FUNGUS_RED = "Ground bit.",
		TURF_DRAGONFLY = "Scaly ground!",

		POWCAKE = "Gives tummy-ache, but... smell so good...",
        CAVE_ENTRANCE = "There rocks in the way.",
        CAVE_ENTRANCE_RUINS = "What down there?",
       
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "Something down there.",
            OPEN = "Wanna see what inside, glorp!",
            FULL = "Lemme in!",
        },
        CAVE_EXIT = 
        {
            GENERIC = "Kinda like it down here, florp.",
            OPEN = "Miss the outside.",
            FULL = "Lemme out!",
        },

		MAXWELLPHONOGRAPH = "Music comes out of it, florp!",
		BOOMERANG = "Come-back stick!",
		PIGGUARD = "Glurp, he even scarier than others.",
		ABIGAIL = "You... nice?",
		ADVENTURE_PORTAL = "Where this go?",
		AMULET = "Pretty magic rock!",
		ANIMAL_TRACK = "Tracks!",
		ARMORGRASS = "Swishy swish!",
		ARMORMARBLE = "It heavyyyy...",
		ARMORWOOD = "Wood shirt!",
		ARMOR_SANITY = "Don't like it, flurp!!",
		ASH =
		{
			GENERIC = "Pile of burny bits.",
			REMAINS_GLOMMERFLOWER = "Aww... all gone.",
			REMAINS_EYE_BONE = "Buh-bye blinky stick.",
			REMAINS_THINGIE = "It gone now.",
		},
		AXE = "Choppy chop!",
		BABYBEEFALO = 
		{
			GENERIC = "So little.",
		    SLEEPING = "Night night!",
        },
        BUNDLE = "Keep for later.",
        BUNDLEWRAP = "Pack lots of things, flurpt!",
		BACKPACK = "For carry all the things!",
		BACONEGGS = "Blegh!!",
		BANDAGE = "Make hurts feel better, flurp.",
		BASALT = "Hard rock!!",
		BEARDHAIR = "Scale-less are weird...",
		BEARGER = "Run away!!",
		BEARGERVEST = "Feel warm and fuzzy...",
		ICEPACK = "Fuzzy bag!",
		BEARGER_FUR = "Stripy fluff.",
		BEDROLL_STRAW = "Scale-less rather sleep on itchy grass than mud?",
		BEEQUEEN = "Queen of stingers!!",
		BEEQUEENHIVE = 
		{
			GENERIC = "That honey in there, florp?",
			GROWING = "Something strange...",
		},
        BEEQUEENHIVEGROWN = "Have bad feeling, florp...",
        BEEGUARD = "Glurp! Big stinger!",
        HIVEHAT = "Wurt your queen now!",
        MINISIGN =
        {
            GENERIC = "Oooh, pictures!",
            UNDRAWN = "Glorph? Nothing on it.",
        },
        MINISIGN_ITEM = "Where put it?",
		BEE =
		{
			GENERIC = "Buzzy stinger.",
			HELD = "Ha! Got you, florp!",
		},
		BEEBOX =
		{
			READY = "Sweets!!",
			FULLHONEY = "Sweets!!",
			GENERIC = "Home for stingers.",
			NOHONEY = "Aww no sweets inside.",
			SOMEHONEY = "Don't wanna wait!!",
			BURNT = "It not buzzing anymore...",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "No room for more mushrooms!",
			LOTS = "Mmm, lots of tasty snacks growing!",
			SOME = "They starting to grow!",
			EMPTY = "Needs mushrooms!",
			ROTTEN = "Need more creepy logs!",
			BURNT = "Too burnt for mushrooms, florp.",
			SNOWCOVERED = "Maybe mushrooms sleeping?",
		},
		BEEFALO =
		{
			FOLLOWER = "Follow me!",
			GENERIC = "Big fuzzy!",
			NAKED = "Glurph, look better with fur.",
			SLEEPING = "Night night, fuzzy.",
            --Domesticated states:
            DOMESTICATED = "This one a friend.",
            ORNERY = "Don't be mad!!",
            RIDER = "Wanna ride!",
            PUDGY = "Big fuzzy look extra big.",
		},

		BEEFALOHAT = "Bigger horns!!",
		BEEFALOWOOL = "Fluffs.",
		BEEHAT = "Can't see in here!",
        BEESWAX = "Stole from stinger nest!",
		BEEHIVE = "Home for stingers.",
		BEEMINE = "Careful, florp!",
		BEEMINE_MAXWELL = "Don't like the way this hums.",
		BERRIES = "Yummy shrub snacks!",
		BERRIES_COOKED = "Why try to burn snacks, glort?",
        BERRIES_JUICY = "Ooooh, big tasty!",
        BERRIES_JUICY_COOKED = "Wanna eat them all!",
		BERRYBUSH =
		{
			BARREN = "Put poop on it, flurp.",
			WITHERED = "Too dry.",
			GENERIC = "Snacks!",
			PICKED = "Gotta wait for more snacks.",
			DISEASED = "Won't make snacks if sick, florp.",
			DISEASING = "Don't look right.",
			BURNING = "Bye-bye.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "Need poop.",
			WITHERED = "It don't like heat either.",
			GENERIC = "Gotta eat them fast!",
			PICKED = "Make snacks! Make snacks!",
			DISEASED = "Look bad, florp.",
			DISEASING = "Don't look right.",
			BURNING = "Hot! Hot!!",
		},
		BIGFOOT = "Has big feets!",
		BIRDCAGE =
		{
			GENERIC = "Stick bird inside!",
			OCCUPIED = "Now bird stay forever!",
			SLEEPING = "Nighty night, birdy.",
			HUNGRY = "Bird needs snack.",
			STARVING = "It look so hungry...",
			DEAD = "Aw, it dead now.",
			SKELETON = "...",
		},
		BIRDTRAP = "Catch birdies!",
		CAVE_BANANA_BURNT = "Glurph, it ruined.",
		BIRD_EGG = "Baby bird inside?",
		BIRD_EGG_COOKED = "Don't want it!",
		BISHOP = "Zappy Ironfolk!!",
		BLOWDART_FIRE = "Wanna try that!",
		BLOWDART_SLEEP = "Sleepy-time, florp!",
		BLOWDART_PIPE = "Ph-tooey!",
		BLOWDART_YELLOW = "Zappy!",
		BLUEAMULET = "Chilly!",
		BLUEGEM = "Pretty rock.",
		BLUEPRINT = 
		{ 
            COMMON = "Has pictures on it!",
            RARE = "Look really complicated, florp.",
        },
        SKETCH = "Oooh, picture!",
		BLUE_CAP = "Good for belly, bad for head.",
		BLUE_CAP_COOKED = "It smell different...",
		BLUE_MUSHROOM =
		{
			GENERIC = "Food!",
			INGROUND = "Will come back when it dark out, florp.",
			PICKED = "Grow big again!",
		},
		BOARDS = "Tree pieces for building, florp.",
		BONESHARD = "Piece of something dead.",
		BONESTEW = "Glurgh.",
		BUGNET = "Wanna catch bugs!",
		BUSHHAT = "Can't see me!!",
		BUTTER = "Taste like bugs... not bad, florp.",
		BUTTERFLY =
		{
			GENERIC = "It ugly, but fun to chase.",
			HELD = "Gotcha!!",
		},
		BUTTERFLYMUFFIN = "Tasty!",
		BUTTERFLYWINGS = "Pluck, pluck!",
		BUZZARD = "Pretty bird!",

		SHADOWDIGGER = "He use the bad magic!!",

		CACTUS = 
		{
			GENERIC = "It full of spikes.",
			PICKED = "Grow back, florp!",
		},
		CACTUS_MEAT_COOKED = "Mmmm, it eating time!",
		CACTUS_MEAT = "Ow! Still spiky.",
		CACTUS_FLOWER = "Glurph, ugly but tasty.",

		COLDFIRE =
		{
			EMBERS = "It dying.",
			GENERIC = "Time for story-tell around fire, florp!",
			HIGH = "Big fire!",
			LOW = "Fire getting small.",
			NORMAL = "Chilly fire?",
			OUT = "Bye-bye.",
		},
		CAMPFIRE =
		{
			EMBERS = "It dying.",
			GENERIC = "Time for story-tell around fire, florp!",
			HIGH = "Big fire!",
			LOW = "Fire getting small.",
			NORMAL = "Warm and toasty.",
			OUT = "Bye-bye.",
		},
		CANE = "This for old folk, florp.",
		CATCOON = "You funny, florp!",
		CATCOONDEN = 
		{
			GENERIC = "Something skritching inside.",
			EMPTY = "Nobody home.",
		},
		CATCOONHAT = "Ha ha, is hat now.",
		COONTAIL = "Mine now, florp!",
		CARROT = "Tasty root!",
		CARROT_COOKED = "It was fine way it was.",
		CARROT_PLANTED = "Grow! Grow!",
		CARROT_SEEDS = "Make more carrot!",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Mermfolk don't need map!",
			BURNING = "Bye-bye!",
			BURNT = "Gone now.",
		},
		WATERMELON_SEEDS = "Make more melon!",
		CAVE_FERN = "Leafy cave plant.",
		CHARCOAL = "Gets claws all smudgy.",
        CHESSPIECE_PAWN = "It littlest of its kin...",
        CHESSPIECE_ROOK =
        {
            GENERIC = "This castle too small.",
            STRUGGLE = "It moving!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "It look like an Ironfolk.",
            STRUGGLE = "It moving!",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Pointy.",
            STRUGGLE = "It moving!",
        },
        CHESSPIECE_MUSE = "Scary lady.",
        CHESSPIECE_FORMAL = "Why everyone act weird around this one.",
        CHESSPIECE_HORNUCOPIA = "Full of yummies, florp!",
        CHESSPIECE_PIPE = "Scale-less are weird, florp.",
        CHESSPIECE_DEERCLOPS = "Won't bother us again.",
        CHESSPIECE_BEARGER = "Grrrr!",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Ha ha! Her face!",
        },
        CHESSPIECE_DRAGONFLY = "It all buggy-eyed.",
        CHESSPIECE_BUTTERFLY = "It so ugly.",
        CHESSPIECE_ANCHOR = "Why made anchor for land, florpt?",
        CHESSPIECE_MOON = "It look just like real thing!",
        CHESSJUNK1 = "It all broken.",
        CHESSJUNK2 = "Didn't do it!!",
        CHESSJUNK3 = "It all messed up.",
		CHESTER = "You weird and fuzzy, but me like you.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Neat!",
			WAITING = "Wake up, florpt!",
		},
		COOKEDMANDRAKE = "Feel bit weird eating veggie with face, florp.",
		COOKEDMEAT = "Don't want it, florp.",
		COOKEDMONSTERMEAT = "Gluuurrrgh.",
		COOKEDSMALLMEAT = "Won't eat it, flurp.",
		COOKPOT =
		{
			COOKING_LONG = "This take foreverrr...",
			COOKING_SHORT = "Will be done quick!",
			DONE = "Time for yums!",
			EMPTY = "Wish there was food inside, flurp.",
			BURNT = "Oops...",
		},
		CORN = "Eat cob for extra crunchy snack, flort.",
		CORN_COOKED = "They 'sploded!",
		CORN_SEEDS = "Make more corns!",
        CANARY =
		{
			GENERIC = "Yellow birdy.",
			HELD = "Got you, florp!",
		},
        CANARY_POISONED = "What wrong with it?",

		CRITTERLAB = "See something moving inside, florp.",
        CRITTER_GLOMLING = "Good bouncy bug.",
        CRITTER_DRAGONLING = "Green scaly friends stick together, florp!",
		CRITTER_LAMB = "Don't worry, will keep you safe!",
        CRITTER_PUPPY = "Wanna play, flurp?",
        CRITTER_KITTEN = "...Guess you pretty okay, florpt.",
        CRITTER_PERDLING = "Hello birdy!",
		CRITTER_LUNARMOTHLING = "You ugly, but me love you.",

		CROW =
		{
			GENERIC = "It a black bird.",
			HELD = "Will find good new home for you, florp.",
		},
		CUTGRASS = "It grass.",
		CUTREEDS = "Swamp full of useful things, florp.",
		CUTSTONE = "It stone. It cut.",
		DEADLYFEAST = "Shouldn't eat that.",
		DEER =
		{
			GENERIC = "Need haircut, florp.",
			ANTLER = "Deer got pointier.",
		},
        DEER_ANTLER = "Deer horn!",
        DEER_GEMMED = "Something wrong with deer's head!",
		DEERCLOPS = "She not look happy, florp.",
		DEERCLOPS_EYEBALL = "Oooh, want to touch it.",
		EYEBRELLAHAT =	"What it looking at?",
		DEPLETED_GRASS =
		{
			GENERIC = "Leftover grass bits.",
		},
        GOGGLESHAT = "Feel silly, flurp.",
        DESERTHAT = "Hate desert, but this help a bit.",
		DEVTOOL = "Like this!",
		DEVTOOL_NODEV = "Can't do it, flurt.",
		DIRTPILE = "Somebody in there?",
		DIVININGROD =
		{
			COLD = "Not making much noise now, florp.",
			GENERIC = "What this weird box thingy?",
			HOT = "It yelling at me!!",
			WARM = "Noises getting louder.",
			WARMER = "More louder!",
		},
		DIVININGRODBASE =
		{
			GENERIC = "What this?",
			READY = "It need something...",
			UNLOCKED = "Think it work now!",
		},
		DIVININGRODSTART = "This thing look weird, florp.",
		DRAGONFLY = "Scaled-folk shouldn't fight, florp!",
		ARMORDRAGONFLY = "More scales!!",
		DRAGON_SCALES = "Pretty...",
		DRAGONFLYCHEST = "Like look of this box, florpt.",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "Broke it...",
			GENERIC = "Look fancy.", --no gems
			NORMAL = "Has friendly face.", --one gem
			HIGH = "Glorpt!! Too hot!!", --two gems
		},
        
        HUTCH = "Such cute little face!!",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Hello fishy-fishy!",
            WAITING = "Taking nap?",
        },
		LAVASPIT = 
		{
			HOT = "Gluuurgh! Hot rock!",
			COOL = "Just rock now.",
		},
		LAVA_POND = "Too hot for swimming, florp.",
		LAVAE = "Aww, it just a baby.",
		LAVAE_COCOON = "Time for nap.",
		LAVAE_PET = 
		{
			STARVING = "Need to find food for you quick!",
			HUNGRY = "Needs snack!",
			CONTENT = "Look happy!",
			GENERIC = "She give warm cuddles.",
		},
		LAVAE_EGG = 
		{
			GENERIC = "Something skritching inside.",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "Need a hug, florp?",
			COMFY = "Feel all warm inside!",
		},
		LAVAE_TOOTH = "Baby lost its first tooth, florp.",

		DRAGONFRUIT = "Pretty fruit, florp.",
		DRAGONFRUIT_COOKED = "Taste like medicine.",
		DRAGONFRUIT_SEEDS = "Pretty fruit seeds.",
		DRAGONPIE = "Mmmm this best pie!!",
		DRUMSTICK = "Gluurph...",
		DRUMSTICK_COOKED = "You put bird in fire??",
		DUG_BERRYBUSH = "You come with me, florp.",
		DUG_BERRYBUSH_JUICY = "Taking you home.",
		DUG_GRASS = "Where put this?",
		DUG_MARSH_BUSH = "Little bit of home, florpt.",
		DUG_SAPLING = "Will find good place for you.",
		DURIAN = "Mmm... smell a bit like swamp!",
		DURIAN_COOKED = "Has good stink to it!",
		DURIAN_SEEDS = "Stinky seeds for stinky fruit, florp!",
		EARMUFFSHAT = "Keep cute webby ears warm.",
		EGGPLANT = "Big purple yummy!",
		EGGPLANT_COOKED = "Brings out purple flavor, flort.",
		EGGPLANT_SEEDS = "Make more purple veggies!",
		
		ENDTABLE = 
		{
			BURNT = "Fire lady did it, flurt!",
			GENERIC = "Table with ugly flower.",
			EMPTY = "Think fish would look better in there than flower.",
			WILTED = "Fish wouldn't get wilty like this, florp.",
			FRESHLIGHT = "Friendly little light.",
			OLDLIGHT = "Need new light.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Aaah, it hot!!",
			BURNT = "Bye-bye tree.",
			CHOPPED = "Broke into pieces!",
			POISON = "What you looking at, florp?",
			GENERIC = "It a tree.",
		},
		ACORN = "Little tree seed!",
        ACORN_SAPLING = "Grow up big!",
		ACORN_COOKED = "Yum!",
		BIRCHNUTDRAKE = "Ha ha! It funny!",
		EVERGREEN =
		{
			BURNING = "Supposed to chop tree THEN make campfire, flort.",
			BURNT = "Bye-bye piney tree.",
			CHOPPED = "Tiny piney pieces.",
			GENERIC = "Me ever-green too, florpt!",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Supposed to chop tree THEN make campfire, flort.",
			BURNT = "Bye-bye piney tree.",
			CHOPPED = "Tiny piney pieces.",
			GENERIC = "Tree look skinny, someone should feed it.",
		},
		TWIGGYTREE = 
		{
			BURNING = "Bye-bye skinny tree.",
			BURNT = "All burnt up.",
			CHOPPED = "Stumpy, florp.",
			GENERIC = "Skinny tree.",			
			DISEASED = "Think it's sick...",
		},
		TWIGGY_NUT_SAPLING = "Will grow big someday!",
        TWIGGY_OLD = "Has lived in forest long time.",
		TWIGGY_NUT = "Is baby tree.",
		EYEPLANT = "It keeping an eye out.",
		INSPECTSELF = "Wanna see me make funny face?",
		FARMPLOT =
		{
			GENERIC = "Can make own veggies?!",
			GROWING = "Growing snacks!",
			NEEDSFERTILIZER = "Put poop on it, florp!",
			BURNT = "It too burnt up for growing.",
		},
		FEATHERHAT = "Look like bird, think like bird.",
		FEATHER_CROW = "Black birdy feather.",
		FEATHER_ROBIN = "Red birdy feather.",
		FEATHER_ROBIN_WINTER = "Snowy bird feather.",
		FEATHER_CANARY = "Yellow birdy feather.",
		FEATHERPENCIL = "For fancy writing, florp.",
		FEM_PUPPET = "You stuck?",
		FIREFLIES =
		{
			GENERIC = "Come back, flurp!",
			HELD = "They tickle!",
		},
		FIREHOUND = "Don't like look of that one, flurp.",
		FIREPIT =
		{
			EMBERS = "It dying.",
			GENERIC = "Time for story-tell around fire, florp!",
			HIGH = "Big fire!",
			LOW = "Fire getting small.",
			NORMAL = "Comfy cozy.",
			OUT = "Can make more fire later!",
		},
		COLDFIREPIT =
		{
			EMBERS = "It dying.",
			GENERIC = "Time for story-tell around fire, florp!",
			HIGH = "Big fire!",
			LOW = "Fire getting small.",
			NORMAL = "Chilly fire?",
			OUT = "Can make more fire later!",
		},
		FIRESTAFF = "Fire shooty stick!",
		FIRESUPPRESSOR = 
		{	
			ON = "Good machine!",
			OFF = "It sleeping.",
			LOWFUEL = "It getting hungry.",
		},

		FISH = "Awwww, it so cute!",
		FISHINGROD = "Grab on, fishes!",
		FISHSTICKS = "Why you do this to fish?!",
		FISHTACOS = "Fish not happy in there...",
		FISH_COOKED = "Fish are friends, not food!",
		FLINT = "Glorph! It sharp!",
		FLOWER = 
		{
            GENERIC = "Glurgh, such ugly plant.",
            ROSE = "Creepy, florp.",
        },
        FLOWER_WITHERED = "Good.",
		FLOWERHAT = "Hat ugly, but killing flowers fun!",
		FLOWER_EVIL = "Blegh, even worse than normal flower.",
		FOLIAGE = "Purple one of tastiest colors, florp.",
		FOOTBALLHAT = "Made from hide of enemies, florp.",
        FOSSIL_PIECE = "Spooky bones.",
        FOSSIL_STALKER =
        {
			GENERIC = "Need more spooky bones.",
			FUNNY = "That how he supposed to look?",
			COMPLETE = "...Why we do this again?",
        },
        STALKER = "Glurph! Has bad shadow magic!",
        STALKER_ATRIUM = "Glurp, i-it real!",
        STALKER_MINION = "Little crawlers!",
        THURIBLE = "Weird smell, flort.",
        ATRIUM_OVERGROWTH = "Wierd letters make head hurt, florp...",
		FROG =
		{
			DEAD = "He gone to big swamp in the sky.",
			GENERIC = "How you do?",
			SLEEPING = "Night-night, froggy.",
		},
		FROGGLEBUNWICH = "This a bad sandwich.",
		FROGLEGS = "Poor froggy...",
		FROGLEGS_COOKED = "Glurgh... can't look.",
		FRUITMEDLEY = "Fruit meldy... moldy... meddle-y?",
		FURTUFT = "It smell funny.", 
		GEARS = "Ironfolk guts.",
		GHOST = "Glorph, go away!",
		GOLDENAXE = "Gold very strong.",
		GOLDENPICKAXE = "It stronger than normal rock cracker.",
		GOLDENPITCHFORK = "For fancy farming, florp.",
		GOLDENSHOVEL = "Fancy tool for digging in dirt.",
		GOLDNUGGET = "Shiny from the ground!",
		GRASS =
		{
			BARREN = "Need some poop.",
			WITHERED = "It too hot out.",
			BURNING = "Fire!!",
			GENERIC = "Some grass, florpt.",
			PICKED = "Not grown back yet.",
			DISEASED = "Looking bit green around the gills, florp.",
			DISEASING = "Something wrong with it.",
		},
		GRASSGEKKO = 
		{
			GENERIC = "Should sneak up on it, florp.",	
			DISEASED = "Something wrong with grass lizard.",
		},
		GREEN_CAP = "Has nice color, probably tasty.",
		GREEN_CAP_COOKED = "It smell different now.",
		GREEN_MUSHROOM =
		{
			GENERIC = "Best mushroom, florp.",
			INGROUND = "It hiding.",
			PICKED = "All mine!",
		},
		GUNPOWDER = "Splodey powder.",
		HAMBAT = "Use meat for hitting? Never thought of that, florp.",
		HAMMER = "Break everything!",
		HEALINGSALVE = "Feel nice.",
		HEATROCK =
		{
			FROZEN = "It all icy.",
			COLD = "Brrr... chilly.",
			GENERIC = "Lucky rock!",
			WARM = "Snuggly warm, florp.",
			HOT = "Hot rock!",
		},
		HOME = "Anyone there?",
		HOMESIGN =
		{
			GENERIC = "What it say?",
            UNWRITTEN = "Nothing there.",
			BURNT = "Aw well.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "What it say?",
            UNWRITTEN = "Nothing there!",
			BURNT = "Roasty.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "What it say?",
            UNWRITTEN = "Nothing there!",
			BURNT = "It dead.",
		},
		HONEY = "Hello my honey!",
		HONEYCOMB = "Stole this from bees!",
		HONEYHAM = "Ruined honey with Pigmeat!!",
		HONEYNUGGETS = "Wasting honey!",
		HORN = "Toot toot!",
		HOUND = "Bad doggy!",
		HOUNDCORPSE =
		{
			GENERIC = "Weird-looking dog.",
			BURNING = "Glurph, smell bad.",
			REVIVING = "It coming back!",
		},
		HOUNDBONE = "Spiky.",
		HOUNDMOUND = "Found doggy nest, florp.",
		ICEBOX = "Chilly box.",
		ICEHAT = "This a very good hat.",
		ICEHOUND = "Chilly doggy.",
		INSANITYROCK =
		{
			ACTIVE = "Where this come from...?",
			INACTIVE = "Tricky rock...",
		},
		JAMMYPRESERVES = "Got claws all sticky.",

		KABOBS = "Glurgh... yucky meat bits.",
		KILLERBEE =
		{
			GENERIC = "It look mad.",
			HELD = "Nice buzzer...",
		},
		KNIGHT = "Springy Ironfolk.",
		KOALEFANT_SUMMER = "What big ears you have!",
		KOALEFANT_WINTER = "What big ears you have!",
		KRAMPUS = "Big meanie!!",
		KRAMPUS_SACK = "It jingles!",
		LEIF = "Treebeast!!",
		LEIF_SPARSE = "Treebeast!!",
		LIGHTER  = "This very special to fire lady, florp.",
		LIGHTNING_ROD =
		{
			CHARGED = "It sizzling!",
			GENERIC = "Scale-less can call down lightning?",
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "Curly-head!",
			CHARGED = "Should run now!",
		},
		LIGHTNINGGOATHORN = "Crackly!",
		GOATMILK = "Zappier than woulda thought, flurp.",
		LITTLE_WALRUS = "Hello, florp! Wanna play?",
		LIVINGLOG = "Feel kinda bad, florp...",
		LOG =
		{
			BURNING = "Campfire!",
			GENERIC = "Can we make campfire?",
		},
		LUCY = "You wood choppy man's friend?",
		LUREPLANT = "Glurgh, why that plant have meat on it??",
		LUREPLANTBULB = "Nasty plant.",
		MALE_PUPPET = "He look stuck!",

		MANDRAKE_ACTIVE = "Glargh! It following me!",
		MANDRAKE_PLANTED = "Supposed to pick those at night, florp.",
		MANDRAKE = "It not moving anymore.",

        MANDRAKESOUP = "Little veggie man make tasty soup.",
        MANDRAKE_COOKED = "Bedtime snack.",
        MAPSCROLL = "Where the pictures?",
        MARBLE = "Big rock chunk.",
        MARBLEBEAN = "Glargh! Ith chippf'd my toof...",
        MARBLEBEAN_SAPLING = "That rock growing?",
        MARBLESHRUB = "Rock bush.",
        MARBLEPILLAR = "It look old.",
        MARBLETREE = "Mr. choppy man, try chop down this tree! Hee-hee...",
        MARSH_BUSH =
        {
			BURNT = "Burnt up.",
            BURNING = "Fire! Fire!",
            GENERIC = "Lots of these in swamp, flort.",
            PICKED = "Ouchie!",
        },
        BURNT_MARSH_BUSH = "It so sad, florp...",
        MARSH_PLANT = "Swamp plant.",
        MARSH_TREE =
        {
            BURNING = "Didn't do it!",
            BURNT = "Burnt up.",
            CHOPPED = "Chopped it all up!",
            GENERIC = "Shouldn't play too close to those, florp.",
        },
        MAXWELL = "He not seem very nice.",
        MAXWELLHEAD = "Glurp! Big head!",
        MAXWELLLIGHT = "Don't like it...",
        MAXWELLLOCK = "Needs key, florpt?",
        MAXWELLTHRONE = "Shouldn't be here...",
        MEAT = "Glargh!",
        MEATBALLS = "Glurgh... hunks of yuck.",
        MEATRACK =
        {
            DONE = "Glurgh, not touching that.",
            DRYING = "Glurgh... it stink.",
            DRYINGINRAIN = "Not sure this thought through, flort.",
            GENERIC = "Scale-less use this for making yucky foods.",
            BURNT = "Oh well, flort.",
            DONE_NOTMEAT = "Look even worse than usual, florp.",
            DRYING_NOTMEAT = "That not look right.",
            DRYINGINRAIN_NOTMEAT = "Thought you said this make things dry?",
        },
        MEAT_DRIED = "It smell bad.",
        MERM = "Hello, flort!",
        MERMHEAD =
        {
            GENERIC = "Who do such thing...",
            BURNT = "Glurp...",
        },
        MERMHOUSE =
        {
            GENERIC = "Home is where the swamp is, florp.",
            BURNT = "Noooooooo!!",
        },
        MINERHAT = "Funny head-light.",
        MONKEY = "Hee-hee, funny monkey.",
        MONKEYBARREL = "Look like a friendly face, florp.",
        MONSTERLASAGNA = "What... in this?",
        FLOWERSALAD = "Look bad, but taste okay.",
        ICECREAM = "Cold treat!",
        WATERMELONICLE = "Chilly melon!",
        TRAILMIX = "Crunch, crunch, crunch!",
        HOTCHILI = "Don't want it, florp!",
        GUACAMOLE = "Yummy green sludge!",
        MONSTERMEAT = "Glurgh, nuh-uh.",
        MONSTERMEAT_DRIED = "Smells even worse now, florp!",
        MOOSE = "This \"Mother Goose\" that Wicker-lady told about?",
        MOOSE_NESTING_GROUND = "This where she keep her babies, florp.",
        MOOSEEGG = "Could crack open and see what inside?",
        MOSSLING = "Hee-hee, funny waddler.",
        FEATHERFAN = "What bird this come from?!",
        MINIFAN = "Hee-hee-hee!",
        GOOSE_FEATHER = "Stole it from goose, florp!",
        STAFF_TORNADO = "Make wind go spinny!",
        MOSQUITO =
        {
            GENERIC = "Wouldn't like my blood, florp!",
            HELD = "Gotcha, nasty pokey bug!",
        },
        MOSQUITOSACK = "Glurgh...",
        MOUND =
        {
            DUG = "Someone left buncha bones in there, florp.",
            GENERIC = "Hmm? Something buried here?",
        },
        NIGHTLIGHT = "Creepy light.",
        NIGHTMAREFUEL = "Bad stuff!",
        NIGHTSWORD = "It made of spooky stuff, florp.",
        NITRE = "Funny rock.",
        ONEMANBAND = "Boom boom boom!",
        OASISLAKE =
		{
			GENERIC = "Water!!",
			EMPTY = "Nooooo! Where water go?!",
		},
        PANDORASCHEST = "What in the box?",
        PANFLUTE = "Plays sleepy music, florp.",
        PAPYRUS = "Make more stories, Wicker-lady!",
        WAXPAPER = "No pictures on this paper!",
        PENGUIN = "They smart birds, would rather swim than fly.",
        PERD = "Grrr, go away gobble-bird!",
        PEROGIES = "Glurgh, hid meat inside??",
        PETALS = "Hee-hee, take that flowers!",
        PETALS_EVIL = "Glurgh, don't wanna carry these.",
        PHLEGM = "Eaten worse, florp.",
        PICKAXE = "Rock cracker.",
        PIGGYBACK = "Made bag from nasty pigskin.",
        PIGHEAD =
        {
            GENERIC = "Ha ha!",
            BURNT = "Crispy Pig!",
        },
        PIGHOUSE =
        {
            FULL = "That house full of nasty Pigfolk!",
            GENERIC = "Sniff... smell like... Pigfolk!",
            LIGHTSOUT = "Coast clear, florp.",
            BURNT = "Hee-hee, pig house all burnt up!",
        },
        PIGKING = "He no King, flort!!",
        PIGMAN =
        {
            DEAD = "Serve you right, flurp.",
            FOLLOWER = "Stay away!",
            GENERIC = "Glurp! Pigfolk...",
            GUARD = "He look even scarier than others.",
            WEREPIG = "Glaaargh!!",
        },
        PIGSKIN = "Took it from nasty Pig!!",
        PIGTENT = "Glurp... there Pigman inside?",
        PIGTORCH = "Grrrr!",
        PINECONE = "Not very good for eating, florp.",
        PINECONE_SAPLING = "Baby tree.",
        LUMPY_SAPLING = "It trying its best, florp.",
        PITCHFORK = "Pokey tool.",
        PLANTMEAT = "Feel... confused...",
        PLANTMEAT_COOKED = "Still not gonna eat it, florp.",
        PLANT_NORMAL =
        {
            GENERIC = "Leafy greens!",
            GROWING = "Ready soon, flort?",
            READY = "Veggies for meee!",
            WITHERED = "Plant need drink of water?",
        },
        POMEGRANATE = "Ohhh, you not supposed to just bite into it?",
        POMEGRANATE_COOKED = "Hmm... okay...",
        POMEGRANATE_SEEDS = "Make more pommy-granites!",
        POND = "Splishy splashy!",
        POOP = "Ha ha, stinky!",
        FERTILIZER = "What? It just some poop.",
        PUMPKIN = "Lumpy and good, florp!",
        PUMPKINCOOKIE = "THIS THE BEST KIND OF PUM-KIN.",
        PUMPKIN_COOKED = "Squishy!",
        PUMPKIN_LANTERN = "Has a friendly face, flort.",
        PUMPKIN_SEEDS = "Make more pum-kins!",
        PURPLEAMULET = "Glurp... don't wanna play with this anymore.",
        PURPLEGEM = "It pretty...",
        RABBIT =
        {
            GENERIC = "Be vewy vewy quiet.",
            HELD = "Hello, rabbit!",
        },
        RABBITHOLE =
        {
            GENERIC = "Rabbit house.",
            SPRING = "Anybody home, florp?",
        },
        RAINOMETER =
        {
            GENERIC = "Hope rain's coming!",
            BURNT = "Aw well, florp.",
        },
        RAINCOAT = "Why scale-less so scared of rain?",
        RAINHAT = "Rain not scary!",
        RATATOUILLE = "This the best!!",
        RAZOR = "Cutty thing?",
        REDGEM = "It pretty and warm.",
        RED_CAP = "These ones bad for you, florp.",
        RED_CAP_COOKED = "Bit better...",
        RED_MUSHROOM =
        {
            GENERIC = "Hello mushroom!",
            INGROUND = "Come out!",
            PICKED = "None left.",
        },
        REEDS =
        {
            BURNING = "Glurgh!! Swamp burning!",
            GENERIC = "There lots of these in the swamp!",
            PICKED = "Gotta find more, flurp.",
        },
        RELIC = "Old thing.",
        RUINS_RUBBLE = "Rocks and things.",
        RUBBLE = "Rocks and things.",
        RESEARCHLAB =
        {
            GENERIC = "Funny-hair man say \"Science\" come out of it?",
            BURNT = "Aw well.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "All-kemmy... en...jun...",
            BURNT = "Well it gone now.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "Glurp... shouldn't play with that.",
            BURNT = "Glad it gone.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Think you just made that up, florp.",
            BURNT = "Weird hat machine burned up.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Is Funny-hair man... okay?",
            BURNT = "Glurgh... it smell real bad.",
        },
        RESURRECTIONSTONE = "This strong magic!",
        ROBIN =
        {
            GENERIC = "Red bird.",
            HELD = "My birdy!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Snowy bird.",
            HELD = "It like to be pet.",
        },
        ROBOT_PUPPET = "You stuck?",
        ROCK_LIGHT =
        {
            GENERIC = "Don't like it, florp.",
            OUT = "Hmm.",
            LOW = "It getting all rocky.",
            NORMAL = "Glowy!",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "That a big boulder...",
            RAISED = "Can't reach, florp!",
        },
        ROCK = "Just a rock, florpt.",
        PETRIFIED_TREE = "It rock shaped like tree?",
        ROCK_PETRIFIED_TREE = "Rock shaped like tree?",
        ROCK_PETRIFIED_TREE_OLD = "Rock shaped like tree?",
        ROCK_ICE =
        {
            GENERIC = "Brrr, that cold on scales!",
            MELTED = "Slushy puddle.",
        },
        ROCK_ICE_MELTED = "Slushy puddle.",
        ICE = "Brrrr...",
        ROCKS = "Buncha rocks, florp.",
        ROOK = "Look mean...",
        ROPE = "For tying, florpt.",
        ROTTENEGG = "Has good stink to it.",
        ROYAL_JELLY = "Mmmmmmmm!",
        JELLYBEAN = "A good bean.",
        SADDLE_BASIC = "Hee-hee, has little horns on it!",
        SADDLE_RACE = "Butterflies good for something, flort!",
        SADDLE_WAR = "Will fight for glory of Mermfolk!",
        SADDLEHORN = "Get saddle off the big fuzzy.",
        SALTLICK = "What you mean, \"only for beefalo\"?",
        BRUSH = "Hair so weird, flurp.",
		SANITYROCK =
		{
			ACTIVE = "Move, florp!",
			INACTIVE = "Maybe imagined it...",
		},
		SAPLING =
		{
			BURNING = "Fire!",
			WITHERED = "Too dry, florp.",
			GENERIC = "Little tree!",
			PICKED = "Took it!",
			DISEASED = "Hmm... look bad.",
			DISEASING = "Something wrong with it, florp.",
		},
   		SCARECROW = 
   		{
			GENERIC = "Like him very much!",
			BURNING = "Nooooo! Save him!!",
			BURNT = "Glort...",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "Make things outta rocks!",
			BLOCK = "Gonna make something good, flort!",
			SCULPTURE = "Look! Made it with own claws!",
			BURNT = "Can't use now.",
   		},
        SCULPTURE_KNIGHTHEAD = "Look like Ironfolk head.",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "What that supposed to be?",
			UNCOVERED = "It broken!",
			FINISHED = "All together!",
			READY = "Something happening...",
		},
        SCULPTURE_BISHOPHEAD = "Look lost, flort.",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "Something weird about it.",
			UNCOVERED = "It lost its head, flurp!",
			FINISHED = "All done!",
			READY = "Huh?",
		},
        SCULPTURE_ROOKNOSE = "Hm, think this belong somewhere.",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "That a strange lump of rock...",
			UNCOVERED = "Missing something...",
			FINISHED = "Look a bit better, flurt.",
			READY = "Something happening...",
		},
        GARGOYLE_HOUND = "It look surprised.",
        GARGOYLE_WEREPIG = "Glurph. Don't like having this around.",
		SEEDS = "Put in dirt, florp!",
		SEEDS_COOKED = "Teeny snacks!",
		SEWING_KIT = "Glurgh... needle hard to hold with claws...",
		SEWING_TAPE = "Weenowna-lady good at fixing.",
		SHOVEL = "Scooper.",
		SILK = "Spiderfolk loogies!",
		SKELETON = "It dead.",
		SCORCHED_SKELETON = "Got too close to campfire, florp.",
		SKULLCHEST = "Maybe something good inside!",
		SMALLBIRD =
		{
			GENERIC = "It so teeny!",
			HUNGRY = "Wants snack, florp.",
			STARVING = "Look really hungry.",
			SLEEPING = "Sleep tight!",
		},
		SMALLMEAT = "Glurgh...",
		SMALLMEAT_DRIED = "Glargh, it even worse now.",
		SPAT = "He not look comfortable, florp.",
		SPEAR = "Stabby stick!",
		SPEAR_WATHGRITHR = "Took Viking lady's stab stick!!",
		WATHGRITHRHAT = "Will wearing make me strong like Viking lady?",
		SPIDER =
		{
			DEAD = "Not so strong, flort.",
			GENERIC = "Spiderfolk...",
			SLEEPING = "Shhhh...",
		},
		SPIDERDEN = "Glurgh, stepped in sticky stuff!",
		SPIDEREGGSACK = "Blegh, this where baby Spiderfolk come from?",
		SPIDERGLAND = "Medicine!",
		SPIDERHAT = "Ha ha, look like Webby boy.",
		SPIDERQUEEN = "She a mighty Queen!",
		SPIDER_WARRIOR =
		{
			DEAD = "Victory for Mermfolk!",
			GENERIC = "Spiderfolk warrior...",
			SLEEPING = "It dreaming of spider things.",
		},
		SPOILED_FOOD = "Maybe it still good?",
        STAGEHAND =
        {
			AWAKE = "Leeme alone, flort!!",
			HIDING = "Something... weird...",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "This rock in a funny shape.",
            TYPE1 = "Missing her head!",
            TYPE2 = "Feels sad, florp.",
            TYPE3 = "Look fancy and boring, florp.", --bird bath type statue
        },
		STATUEHARP = "Someone broke it, florp.",
		STATUEMAXWELL = "Look sort of like fragile scale-less man.",
		STEELWOOL = "Scratchy!",
		STINGER = "Buzzer butt.",
		STRAWHAT = "Itchy...",
		STUFFEDEGGPLANT = "Wha-! Veggie with more veggie inside!?",
		SWEATERVEST = "Scale-less wear so many clothes.",
		REFLECTIVEVEST = "Hm... orange.",
		HAWAIIANSHIRT = "Glurgh, there flowers all over!",
		TAFFY = "MMMMMMMM! ITH THO CHEWY!",
		TALLBIRD = "Leggy bird.",
		TALLBIRDEGG = "Hear something inside!",
		TALLBIRDEGG_COOKED = "Glurgh...",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "You cold?",
			GENERIC = "It hatching!",
			HOT = "Hm... feel hot...",
			LONG = "Why taking so long!!",
			SHORT = "Will be out soon!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Leggy bird egg!",
			PICKED = "This where leggy bird sleep.",
		},
		TEENBIRD =
		{
			GENERIC = "You not as fun now that you older.",
			HUNGRY = "Wants snacks.",
			STARVING = "Gets cranky when it's hungry.",
			SLEEPING = "Likes taking naps, flort.",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Glorp, can always come back, right?",
			GENERIC = "This go to... other worlds?",
			LOCKED = "Something missing, florpt?",
			PARTIAL = "Not done yet?",
		},
		TELEPORTATO_BOX = "Funny box.",
		TELEPORTATO_CRANK = "What this thing?",
		TELEPORTATO_POTATO = "Big metal lump.",
		TELEPORTATO_RING = "Hmm, too big for crown, florp.",
		TELESTAFF = "Make head feel funny, florp...",
		TENT = 
		{
			GENERIC = "Sleeping place.",
			BURNT = "It burnt up.",
		},
		SIESTAHUT = 
		{
			GENERIC = "Wanna take a nap! Nap right here...",
			BURNT = "Gotta find new napping spot...",
		},
		TENTACLE = "Scale-less always walking into those, florp.",
		TENTACLESPIKE = "Ha ha, spiky!",
		TENTACLESPOTS = "Took its skin!",
		TENTACLE_PILLAR = "Tickle its belly!",
        TENTACLE_PILLAR_HOLE = "What in there?",
		TENTACLE_PILLAR_ARM = "They just little.",
		TENTACLE_GARDEN = "Found its house!",
		TOPHAT = "Oooooh, fancy!",
		TORCH = "Fire stick.",
		TRANSISTOR = "It buzzing! Bees stuck inside?",
		TRAP = "Sneaky!",
		TRAP_TEETH = "Look scary, florp.",
		TRAP_TEETH_MAXWELL = "Glorph! Scary spikes!",
		TREASURECHEST = 
		{
			GENERIC = "Oooooh, box for things!",
			BURNT = "Noooo!",
		},
		TREASURECHEST_TRAP = "Treasure!",
		SACRED_CHEST = 
		{
			GENERIC = "Wonder what inside?",
			LOCKED = "Hey!",
		},
		TREECLUMP = "Can't go past those because... erm... because.....",
		
		TRINKET_1 = "Pretty little stones!", --Melted Marbles
		TRINKET_2 = "Why it not toot?!", --Fake Kazoo
		TRINKET_3 = "Grrr, can't... un-knot...!", --Gord's Knot
		TRINKET_4 = "Weird tiny man.", --Gnome
		TRINKET_5 = "Nyoooom!", --Toy Rocketship
		TRINKET_6 = "Weird bendy colored sticks?", --Frazzled Wires
		TRINKET_7 = "This game too hard!", --Ball and Cup
		TRINKET_8 = "Crunchy, florp.", --Rubber Bung
		TRINKET_9 = "These rocks have holes in middle?", --Mismatched Buttons
		TRINKET_10 = "Hee-hee, such short stubby chompers.", --Dentures
		TRINKET_11 = "It say everything gonna be okay!", --Lying Robot
		TRINKET_12 = "Hee-hee, it dead.", --Dessicated Tentacle
		TRINKET_13 = "Weird tiny lady.", --Gnomette
		TRINKET_14 = "For drinking or bath, flort.", --Leaky Teacup
		TRINKET_15 = "Look like... tiny Ironfolk...?", --Pawn
		TRINKET_16 = "Look like... tiny Ironfolk...?", --Pawn
		TRINKET_17 = "Food scooper.", --Bent Spork
		TRINKET_18 = "Something rattling inside.", --Trojan Horse
		TRINKET_19 = "Spin! Spin!", --Unbalanced Top
		TRINKET_20 = "Extra claws for scratching!", --Backscratcher
		TRINKET_21 = "Scale-less have weird inventions, florp.", --Egg Beater
		TRINKET_22 = "Tiny rope?", --Frayed Yarn
		TRINKET_23 = "Not look like a horn, florp.", --Shoehorn
		TRINKET_24 = "Look happy.", --Lucky Cat Jar
		TRINKET_25 = "How get tree so small and flat?", --Air Unfreshener
		TRINKET_26 = "Where all the insides?!", --Potato Cup
		TRINKET_27 = "Has little claw at the end!", --Coat Hanger
		TRINKET_28 = "This castle for ants?", --Rook
        TRINKET_29 = "This castle for ants?", --Rook
        TRINKET_30 = "Look like... tiny Ironfolk...?", --Knight
        TRINKET_31 = "Look like... tiny Ironfolk...?", --Knight
        TRINKET_32 = "Can see cute face in it!", --Cubic Zirconia Ball
        TRINKET_33 = "Who ever seen such tiny Spiderfolk?", --Spider Ring
        TRINKET_34 = "Seem safe, florp.", --Monkey Paw
        TRINKET_35 = "Somebody drank it, florp.", --Empty Elixir
        TRINKET_36 = "Good chompers!", --Faux fangs
        TRINKET_37 = "Didn't break it!! Found like this!", --Broken Stake
        TRINKET_38 = "Can see forever!", -- Binoculars Griftlands trinket
        TRINKET_39 = "Keep one claw warm.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "This snail sleeping.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Warm goop!", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Oooh, fun toy!", -- Toy Cobra Hot Lava trinket
        TRINKET_43= "Hee-hee it wear funny clothes!", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "Someone broke plant house.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "What it do?", -- Odd Radio ONI trinket
        TRINKET_46 = "Hm...", -- Hairdryer ONI trinket
        
        HALLOWEENCANDY_1 = "These even better than regular apple, flort!",
        HALLOWEENCANDY_2 = "Made corn even better?!",
        HALLOWEENCANDY_3 = "Corn!!",
        HALLOWEENCANDY_4 = "Didn't know Spiderfolk could be tasty!",
        HALLOWEENCANDY_5 = "Will eat you in one bite, florp!",
        HALLOWEENCANDY_6 = "Taste good to me, florp.",
        HALLOWEENCANDY_7 = "Can eat yours if you don't want them, florp",
        HALLOWEENCANDY_8 = "Yummy yum!",
        HALLOWEENCANDY_9 = "Even better than normal worm!",
        HALLOWEENCANDY_10 = "Mmm, taste like swamp!",
        HALLOWEENCANDY_11 = "Grrr, will eat you all up!!",
        HALLOWEENCANDY_12 = "Yum yum in the tum-tum!", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Mermfolk have jaws of steel!", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Hot-hot, HOT!!", --Hot Lava pepper candy
        CANDYBAG = "Sweets!!",

		HALLOWEEN_ORNAMENT_1 = "Boo! Hee-hee.",
		HALLOWEEN_ORNAMENT_2 = "Can help decorate too, florp!",
		HALLOWEEN_ORNAMENT_3 = "Hee-hee... look just like Webby boy.", 
		HALLOWEEN_ORNAMENT_4 = "These not so scary.",
		HALLOWEEN_ORNAMENT_5 = "Mermfolk very fearsome! Where Merm ornament??",
		HALLOWEEN_ORNAMENT_6 = "Pretty bird.", 

		HALLOWEENPOTION_DRINKS_WEAK = "Didn't turn out so good...",
		HALLOWEENPOTION_DRINKS_POTENT = "Has strong smell.",
        HALLOWEENPOTION_BRAVERY = "Not scared of anything, flurt!",
		HALLOWEENPOTION_MOON = "Look breakable...",
		HALLOWEENPOTION_FIRE_FX = "Sparkle bottle.", 
		MADSCIENCE_LAB = "Bubble, bubble!",
		LIVINGTREE_ROOT = "Still roots left!", 
		LIVINGTREE_SAPLING = "Still growing.",

        DRAGONHEADHAT = "Look almost as cute as own face, florp.",
        DRAGONBODYHAT = "Everything go with scales!",
        DRAGONTAILHAT = "Always wanted a tail!",
        PERDSHRINE =
        {
            GENERIC = "Huh? What you want, gobble-bird?",
            EMPTY = "Something go here?",
            BURNT = "It all burnt up, flurt.",
        },
        REDLANTERN = "Hm, it look kinda nice.",
        LUCKY_GOLDNUGGET = "Shiny rock!",
        FIRECRACKERS = "Make big sounds and lights!!",
        PERDFAN = "Feather stick!",
        REDPOUCH = "Something clinking inside.",
        WARGSHRINE = 
        {
            GENERIC = "House for gold doggy.",
            EMPTY = "Need some light, flort.",
--fallback to speech_wilson.lua             BURNING = "I should make something fun.", --for willow to override
            BURNT = "All burnt up.",
        },
        CLAYWARG = 
        {
        	GENERIC = "Big teeth!",
        	STATUE = "Have weird feeling, florp.",
        },
        CLAYHOUND = 
        {
        	GENERIC = "Glurp! Bitey!",
        	STATUE = "Who make you, florp?",
        },
        HOUNDWHISTLE = "It make no sound?",
        CHESSPIECE_CLAYHOUND = "Bad doggy.",
        CHESSPIECE_CLAYWARG = "Grrrr!",

		PIGSHRINE =
		{
            GENERIC = "Who make this??",
            EMPTY = "Not giving you anything, flurt.",
            BURNT = "Good, it gone now.",
		},
		PIG_TOKEN = "Stole Pigman's belt!",
		PIG_COIN = "Shiny pig nose, florp!",
		YOTP_FOOD1 = "Blegh! Has nasty Pig face!",
		YOTP_FOOD2 = "Usually like mud, but that just bad.",
		YOTP_FOOD3 = "This insulting to fish.",

		PIGELITE1 = "Stay away!", --BLUE
		PIGELITE2 = "Grrr, bad Pig!", --RED
		PIGELITE3 = "Nasty Pigman!", --WHITE
		PIGELITE4 = "Enemy of Mermfolk!", --GREEN

		PIGELITEFIGHTER1 = "Stay away!", --BLUE
		PIGELITEFIGHTER2 = "Grrr, bad Pig!", --RED
		PIGELITEFIGHTER3 = "Nasty Pigman!", --WHITE
		PIGELITEFIGHTER4 = "Enemy of Mermfolk!", --GREEN

		BISHOP_CHARGE_HIT = "GLOP!",
		TRUNKVEST_SUMMER = "Wearing a nose!",
		TRUNKVEST_WINTER = "Cozy...",
		TRUNK_COOKED = "Blegh!",
		TRUNK_SUMMER = "Got its nose!",
		TRUNK_WINTER = "Fuzzy.",
		TUMBLEWEED = "Where you going?",
		TURKEYDINNER = "Horrible, flort.",
		TWIGS = "Buncha sticks, florp.",
		UMBRELLA = "Don't need umm-brella!",
		GRASS_UMBRELLA = "Don't see what so pretty about it.",
		UNIMPLEMENTED = "What that?",
		WAFFLES = "Fluffy sweet squares!",
		WALL_HAY = 
		{	
			GENERIC = "Will huff and puff and blow wall down!",
			BURNT = "That not how story usually end, flort.",
		},
		WALL_HAY_ITEM = "Wicker-lady has story of house built with straw...",
		WALL_STONE = "Look good, florp!",
		WALL_STONE_ITEM = "Rock pile!",
		WALL_RUINS = "How look so old already, flort?",
		WALL_RUINS_ITEM = "Will make strong wall!",
		WALL_WOOD = 
		{
			GENERIC = "Would look nice with some Pig heads.",
			BURNT = "Aww, was nice wall...",
		},
		WALL_WOOD_ITEM = "Nice and sharp, florp.",
		WALL_MOONROCK = "Moon wall!",
		WALL_MOONROCK_ITEM = "Tough rocks.",
		FENCE = "Keep out nasty Pigfolk, florp.",
        FENCE_ITEM = "For building fence!",
        FENCE_GATE = "Oooh smart, put door in fence.",
        FENCE_GATE_ITEM = "For building fence-door!",
		WALRUS = "He look big and important, florp.",
		WALRUSHAT = "Hee-hee, it go with my scales!",
		WALRUS_CAMP =
		{
			EMPTY = "Somebody here before, florp.",
			GENERIC = "Look warm for ice house.",
		},
		WALRUS_TUSK = "Took his tooth!",
		WARDROBE = 
		{
			GENERIC = "Can play dress-up!",
            BURNING = "Fire! Fire!!",
			BURNT = "Aww...",
		},
		WARG = "What big teeth he have!",
		WASPHIVE = "Look scary... but sweet stuff inside...",
		WATERBALLOON = "Don't worry, won't throw at you... (hee-hee)",
		WATERMELON = "Gimme!!",
		WATERMELON_COOKED = "Roasty melon.",
		WATERMELONHAT = "Think me like fa-shun, florp!",
		WAXWELLJOURNAL = "...Don't like stories in that book.",
		WETGOOP = "Usually like wet goopy things...",
        WHIP = "Whi-chaaa!!",
		WINTERHAT = "It look cozy!",
		WINTEROMETER = 
		{
			GENERIC = "Scale-less need this to tell if warm or cold?",
			BURNT = "Okay.",
		},

        WINTER_TREE =
        {
            BURNT = "Was so pretty...",
            BURNING = "Glorph! Put it out!!",
            CANDECORATE = "Never saw such pretty tree!",
            YOUNG = "Grow big!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "Gotta find pine cone!",
            BURNT = "Oh...",
		},
        WINTER_ORNAMENT = "Oooooh... pretty!",
        WINTER_ORNAMENTLIGHT = "Glowy!",
        WINTER_ORNAMENTBOSS = "These get special place on tree!",
		WINTER_ORNAMENTFORGE = "Have to put that one on tree?",
		WINTER_ORNAMENTGORGE = "...?",

        WINTER_FOOD1 = "MMMM, but what it supposed to be?", --gingerbread cookie
        WINTER_FOOD2 = "This snowflake melt on tongue too!", --sugar cookie
        WINTER_FOOD3 = "Crunchy!", --candy cane
        WINTER_FOOD4 = "Glurgh, what in this?", --fruitcake
        WINTER_FOOD5 = "It not a real log?", --yule log cake
        WINTER_FOOD6 = "Watch! Can put whole thing in mouth!", --plum pudding
        WINTER_FOOD7 = "Mmmmm...", --apple cider
        WINTER_FOOD8 = "This. Best. Thing. Ever.", --hot cocoa
        WINTER_FOOD9 = "Sluuuurrrrp!", --eggnog

		--Dishes are not final - let these be for now
		WINTERSFEASTOVEN =
		{
			GENERIC = "Is big burny thing!",
			COOKING = "It making the food now, florp.",
			ALMOST_DONE_COOKING = "Can eat now? Maybe now? Now?",
			DISH_READY = "FOOD READY!",
		},
		BERRYSAUCE = "Yummy yummy berries!",
		BIBINGKA = "Like this!",
		CABBAGEROLLS = "Cabbage rolled up with more cabbage, flort!",
		FESTIVEFISH = "Someone playing tricks, it just veggies shaped like fish!",
		GRAVY = "Mmmm, is chocolate!",
		LATKES = "Is good and crunchy!",
		LUTEFISK = "Is just potatoes made into fish shape!",
		MULLEDDRINK = "Mmmm, warms up tummy!",
		PANETTONE = "Tasty tasty bread!",
		PAVLOVA = "Fancy cook man call it a mer... mer-ingy... mer-angy...",
		PICKLEDHERRING = "Someone playing tricks, it just veggies shaped like fish!",
		POLISHCOOKIE = "Yummy fruit pockets!",
		PUMPKINPIE = "Mmmmmmmmmm!",
		ROASTTURKEY = "It look like yucky turkey, but smell like veggies?",
		STUFFING = "Tasty bready bits.",
		SWEETPOTATO = "This even better than normal potato!",
		TAMALES = "Mmm, hot veggie bits inside.",
		TOURTIERE = "Mmm, is hot veggie pie!",

		TABLE_WINTERS_FEAST = 
		{
			GENERIC = "Is very fancy table.",
			HAS_FOOD = "Ready to eat! Ready to eat!",
			WRONG_TYPE = "That not go there!",
			BURNT = "Aww, feast over?",
		},

		GINGERBREADWARG = "Will eat you all up!", 
		GINGERBREADHOUSE = "Anybody home?", 
		GINGERBREADPIG = "No mercy for tiny Cookie-Pigfolk!",
		CRUMBS = "Left tasty trail, florp.",
		WINTERSFEASTFUEL = "It look tasty.",

        KLAUS = "You have presents for me?",
        KLAUS_SACK = "Open it! Open it!",
		KLAUSSACKKEY = "Funny-looking antler, florp...",
		WORMHOLE =
		{
			GENERIC = "Something moving?",
			OPEN = "Ha ha! It just toothy tunnel, florp.",
		},
		WORMHOLE_LIMITED = "Not feeling good, florp?",
		ACCOMPLISHMENT_SHRINE = "Done so many things, florp!",        
		LIVINGTREE = "It giving me funny look, florp.",
		ICESTAFF = "Magic cold stick.",
		REVIVER = "Glurp! It still moving!",
		SHADOWHEART = "Feel... sad...",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "Ooooh, picture story!",
			LINE_2 = "Can't see pictures, florp.",
			LINE_3 = "Look like... bad things happen.",
			LINE_4 = "This getting scary...",
			LINE_5 = "They had village here.",
		},
        ATRIUM_STATUE = "Glurp... something wrong with it...",
        ATRIUM_LIGHT = 
        {
			ON = "Glurp! Scary!",
			OFF = "Need fire?",
		},
        ATRIUM_GATE =
        {
			ON = "Shouldn't have done that!",
			OFF = "Someone broke it.",
			CHARGING = "What happening?!",
			DESTABILIZING = "G-glorp!",
			COOLDOWN = "It over now?",
        },
        ATRIUM_KEY = "This look important!",
		LIFEINJECTOR = "Don't like needles, florp!",
		SKELETON_PLAYER =
		{
			MALE = "Something happen to them...",
			FEMALE = "Something happen to them...",
			ROBOT = "Something happen to them...",
			DEFAULT = "Bye-bye...",
		},
		HUMANMEAT = "Nuh-uh.",
		HUMANMEAT_COOKED = "Glurgh, scale-less smell even worse cooked.",
		HUMANMEAT_DRIED = "Nope.",
		ROCK_MOON = "Moonrock!",
		MOONROCKNUGGET = "Weird rock.",
		MOONROCKCRATER = "Rock need pretty decoration!",
		MOONROCKSEED = "Floaty!",

        REDMOONEYE = "Got something in its eye, florp.",
        PURPLEMOONEYE = "Stop staring, glort!",
        GREENMOONEYE = "Wonder what it sees, flort.",
        ORANGEMOONEYE = "It looking at me, flurp.",
        YELLOWMOONEYE = "What it looking at?",
        BLUEMOONEYE = "Where you looking, flurt?",

        --Arena Event
        LAVAARENA_BOARLORD = "Grrr, will show you!",
        BOARRIOR = "G-glorp... b-big Pigfolk...",
        BOARON = "You kin of Pigfolk??",
        PEGHOOK = "Glurp, bad bug!",
        TRAILS = "He... not so tough looking... glurp.",
        TURTILLUS = "Why not get along, florp?",
        SNAPPER = "Toothy.",
		RHINODRILL = "They not so tough, flort!",
		BEETLETAUR = "Glurt!!",

        LAVAARENA_PORTAL = 
        {
            ON = "Bye-bye!",
            GENERIC = "How that door work?",
        },
        LAVAARENA_KEYHOLE = "Something go in there...",
		LAVAARENA_KEYHOLE_FULL = "All done!",
        LAVAARENA_BATTLESTANDARD = "It ok to break it? YEAH!!",
        LAVAARENA_SPAWNER = "Fighty folk keep coming from there.",

        HEALINGSTAFF = "Blegh, ugly stick...",
        FIREBALLSTAFF = "Thwooooom!",
        HAMMER_MJOLNIR = "Extra hitty hammer!",
        SPEAR_GUNGNIR = "Stabby!",
        BLOWDART_LAVA = "Shouldn't play with it... gonna anyway.",
        BLOWDART_LAVA2 = "Look dangerous!",
        LAVAARENA_LUCY = "Loo-cy look different.",
        WEBBER_SPIDER_MINION = "Spiderfolk and Mermfolk truced for now, florp.",
        BOOK_FOSSIL = "What this say, florp?",
		LAVAARENA_BERNIE = "Yay!! Bear come to play!",
		SPEAR_LANCE = "Swirly!",
		BOOK_ELEMENTAL = "What this say, florp?",
		LAVAARENA_ELEMENTAL = "Glurp!! Rock monster!",

   		LAVAARENA_ARMORLIGHT = "Reeds good for hide in... not so good for fight in.",
		LAVAARENA_ARMORLIGHTSPEED = "Hee-hee, it's tickly!",
		LAVAARENA_ARMORMEDIUM = "Made of strong tree skin.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "Grrr! Look very fearsome!",
		LAVAARENA_ARMORMEDIUMRECHARGER = "Look light, for working quick!",
		LAVAARENA_ARMORHEAVY = "Made of strong rocks!",
		LAVAARENA_ARMOREXTRAHEAVY = "So safe!! But, glurgh... so heavy...",

		LAVAARENA_FEATHERCROWNHAT = "Hee-hee! Feather head!",
        LAVAARENA_HEALINGFLOWERHAT = "Blegh... have to wear it...?",
        LAVAARENA_LIGHTDAMAGERHAT = "Feel little stronger!",
        LAVAARENA_STRONGDAMAGERHAT = "Hrrraaaaagh!!",
        LAVAARENA_TIARAFLOWERPETALSHAT = "It fill head with healing learning!",
        LAVAARENA_EYECIRCLETHAT = "Has magic eye.",
        LAVAARENA_RECHARGERHAT = "Feel speedy, florp!",
        LAVAARENA_HEALINGGARLANDHAT = "Know it good for me, but gluuurrgghh...",
        LAVAARENA_CROWNDAMAGERHAT = "Extra horns for extra fight!!",

		LAVAARENA_ARMOR_HP = "Feel bit safer, florp.",

		LAVAARENA_FIREBOMB = "BOOOOM!!",
		LAVAARENA_HEAVYBLADE = "This sword almost big as me, florp!",

        --Quagmire
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "That where food goes.",
        	FULL = "It just ate!",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "Look creepy...",
		QUAGMIRE_PARK_FOUNTAIN = "Aww... no water to splash in.",
		
        QUAGMIRE_HOE = "Farming... thing!",
        
        QUAGMIRE_TURNIP = "Mmm, turnip!",
        QUAGMIRE_TURNIP_COOKED = "Hot turnip!",
        QUAGMIRE_TURNIP_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_GARLIC = "Make good snack.",
        QUAGMIRE_GARLIC_COOKED = "It smell even better now!",
        QUAGMIRE_GARLIC_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_ONION = "Can have some? Pleeaaase?",
        QUAGMIRE_ONION_COOKED = "(Sniff) Mmmm...",
        QUAGMIRE_ONION_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_POTATO = "It a 'tato!",
        QUAGMIRE_POTATO_COOKED = "Tasty 'tatoes.",
        QUAGMIRE_POTATO_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_TOMATO = "It nice and ripe.",
        QUAGMIRE_TOMATO_COOKED = "Cooked it real good!",
        QUAGMIRE_TOMATO_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_FLOUR = "This dusty stuff go in food?",
        QUAGMIRE_WHEAT = "It like grass, with hidden snacks!",
        QUAGMIRE_WHEAT_SEEDS = "Wonder what gonna grow?",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Wonder what gonna grow?",
        
        QUAGMIRE_ROTTEN_CROP = "Don't think big sky mouth would like that, florp.",
        
		QUAGMIRE_SALMON = "Hello fishy!",
		QUAGMIRE_SALMON_COOKED = "Nooooooo!!",
		QUAGMIRE_CRABMEAT = "(Sniff) poor crab...",
		QUAGMIRE_CRABMEAT_COOKED = "Glurph... can't look.",
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "There sweet stuff inside!",
			STUMP = "Someone took tree! Not me!",
			TAPPED_EMPTY = "Aww... nothing left.",
			TAPPED_READY = "Mmm, it full of sweet stuff!",
			TAPPED_BUGS = "Blegh, there bugs stuck in the sweet stuff.",
			WOUNDED = "Tree okay?",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "Something about it feel like home.",
			PICKED = "Nothing left for picking.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "Smell kinda spicy.",
		QUAGMIRE_SPOTSPICE_GROUND = "Oooh, it taste good!",
		QUAGMIRE_SAPBUCKET = "Holds sweet tree stuff!",
		QUAGMIRE_SAP = "Mmmm, so sweet!!",
		QUAGMIRE_SALT_RACK =
		{
			READY = "There stuff growing on it!",
			GENERIC = "How this supposed to work, florp?",
		},
		
		QUAGMIRE_POND_SALT = "Blegh, it full of salty water!",
		QUAGMIRE_SALT_RACK_ITEM = "This go over salty pond?",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "Wonder what inside this hidey box...",
			LOCKED = "Aww, let me in!!",
		},

		QUAGMIRE_KEY = "Maybe this open those hidey boxes!",
		QUAGMIRE_KEY_PARK = "Not for hidey boxes... what it open?",
        QUAGMIRE_PORTAL_KEY = "Ooooh, look important!",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Ooooh, this where mushrooms grow!",
			PICKED = "No more mushroom...?",
		},
		QUAGMIRE_MUSHROOMS = "Mushrooms very chewy and good.",
        QUAGMIRE_MEALINGSTONE = "Crush into tiny bits!",
		QUAGMIRE_PEBBLECRAB = "Aww, it so cute!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "What this thing?",
        QUAGMIRE_RUBBLE_CLOCK = "What happen to it?",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Mermfolk have story passed down... about mouth in the sky...",
        QUAGMIRE_RUBBLE_PUBDOOR = "It all broken.",
        QUAGMIRE_RUBBLE_ROOF = "Was there fight? Look like Goatfolk lose.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "PLACEHOLDER",
        QUAGMIRE_RUBBLE_BIKE = "Weird looking thing...",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "Rock thrower! Rock thrower!",
        	OFF = "Why it not work?",
        	BURNING = "It look super dangerous now!",
        	BURNT = "Awww...",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "What this thing?",
        	OFF = "Think it tired.",
        	BURNING = "That not right kind of light.",
        	BURNT = "Not gonna help now, florp.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "This box have weird colored branches sticking out.",
        	LOWPOWER = "The little light getting lower...",
        	OFF = "Think it asleep.",
        	BURNING = "Didn't do it!!",
        	BURNT = "Weenowna-lady can build 'nother one, florp!",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "What it do?",
        	LOWPOWER = "It looking tired.",
        	OFF = "It supposed to be doing something?",
        	BURNING = "It supposed to do that, florp?",
        	BURNT = "Oh well.",
        },

        --Wormwood
        COMPOSTWRAP = "(Sniff) Glurgh!!",
        ARMOR_BRAMBLE = "Plant made it!",
        TRAP_BRAMBLE = "Plant trap!",

        BOATFRAGMENT03 = "Bye-bye boat.",
        BOATFRAGMENT04 = "Bye-bye boat.",
        BOATFRAGMENT05 = "Bye-bye boat.",
		BOAT_LEAK = "Don't see this as big problem, florp.",
        MAST = "This for boat?",
        SEASTACK = "Ooooh, big rock!",
        FISHINGNET = "Scoop many fishes.",
        ANTCHOVIES = "Is fish? Or bug?",
        STEERINGWHEEL = "Wurt is captain!!",
        ANCHOR = "Keep boat stuck.",
        BOATPATCH = "Why patch? Let water in, florpt!",
        DRIFTWOOD_TREE = 
        {
            BURNING = "Hot! Hot!!",
            BURNT = "Gone now.",
            CHOPPED = "Choppy chop!",
            GENERIC = "It drowned, florp.",
        },

        DRIFTWOOD_LOG = "Floaty log.",

        MOON_TREE = 
        {
            BURNING = "Fire! Fire!",
            BURNT = "All burnt up.",
            CHOPPED = "Only stump left.",
            GENERIC = "Trees weird here.",
        },
		MOON_TREE_BLOSSOM = "Glargh, tree was full of flowers.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "It slightly less ugly than normal butterflies.",
        	HELD = "Soft...",
        },
		MOONBUTTERFLYWINGS = "Bit dusty.",
        MOONBUTTERFLY_SAPLING = "Tree grow from bug? Me learning lots today!",
        ROCK_AVOCADO_FRUIT = "Ow! Too hard!",
        ROCK_AVOCADO_FRUIT_RIPE = "It ready!",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Made it yummier!",
        ROCK_AVOCADO_FRUIT_SPROUT = "Too little to make fruit yet.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "No fruits here, flort.",
			WITHERED = "It look thirsty.",
			GENERIC = "Huh? Those fruits look like rocks, flort.",
			PICKED = "Grow back now!",
			DISEASED = "It look sick, flurt.",
            DISEASING = "Something wrong with it...",
			BURNING = "Fire! Fire!",
		},
        DEAD_SEA_BONES = "Poor fish, shoulda stayed in water, florp.",
        HOTSPRING = 
        {
        	GENERIC = "Swimming hole!",
        	BOMBED = "Look nice and warm!",
        	GLASS = "Pretty!",
			EMPTY = "Nothing here!",
        },
        MOONGLASS = "Glurp! Sharp!",
        MOONGLASS_ROCK = "Good color, florp.",
        BATHBOMB = "Wanna throw it now!",
        TRAP_STARFISH =
        {
            GENERIC = "Wanna poke it!",
            CLOSED = "Glorp! Tried to eat me!",
        },
        DUG_TRAP_STARFISH = "Will find good spot for you, hee-hee.",
        SPIDER_MOON = 
        {
        	GENERIC = "Never seen Spiderfolk like that.",
        	SLEEPING = "Shhh...",
        	DEAD = "Bye-bye!",
        },
        MOONSPIDERDEN = "Extra nasty Spiderfolk!!",
		FRUITDRAGON =
		{
			GENERIC = "It not easy being green.",
			RIPE = "Smell like... fruit?",
			SLEEPING = "It taking a nap.",
		},
        PUFFIN =
        {
            GENERIC = "Fat little bird.",
            HELD = "Got it, flurt!!",
            SLEEPING = "Sleepy bird.",
        },

		MOONGLASSAXE = "Chop extra good, florp!",
		GLASSCUTTER = "Glorp! Sharp!",

        ICEBERG =
        {
            GENERIC = "Watch out, florp!",
            MELTED = "All melty!",
        },
        ICEBERG_MELTED = "All melty!",

        MINIFLARE = "Sparky!",

		MOON_FISSURE = 
		{
			GENERIC = "Glurph... head feel funny.", 
			NOLIGHT = "ECHO! Echo! Echoooo...",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Still need something.",
            GENERIC = "You need help, florp?",
        },

        MOON_ALTAR_IDOL = "Where you want to go?",
        MOON_ALTAR_GLASS = "It look sad there.",
        MOON_ALTAR_SEED = "You need to go home, flort.",

        MOON_ALTAR_ROCK_IDOL = "Hello?",
        MOON_ALTAR_ROCK_GLASS = "Hello?",
        MOON_ALTAR_ROCK_SEED = "Hello?",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "Make things for water, florp!",
            BURNT = "That seem to happen a lot...",
        },
        BOAT_ITEM = "For travel on the big pond!",
        STEERINGWHEEL_ITEM = "This go on boat?",
        ANCHOR_ITEM = "Can make boat-stopper!",
        MAST_ITEM = "Pieces for boat thing.",
        MUTATEDHOUND = 
        {
        	DEAD = "Bye-bye doggy.",
        	GENERIC = "Glurph, it look sick?",
        	SLEEPING = "Shouldn't wake it up, florp.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "That better, florp.",
			GENERIC = "Glorp, can see its insides!",
			SLEEPING = "Night-night scary bird.",
		},
        CARRAT = 
        {
        	DEAD = "It not moving anymore.",
        	GENERIC = "What that?",
        	HELD = "Food or pet, florp?",
        	SLEEPING = "It sleeping now.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "Water snack!",
            PICKED = "Will come back later, florp.",
        },
		BULLKELP_ROOT = "Plant more water snacks!",
        KELPHAT = "Would rather eat than wear, florp.",
		KELP = "Sea snack!",
		KELP_COOKED = "Mmmm, slimy!",
		KELP_DRIED = "Salty crunchies.",

		GESTALT = "They want to tell story.",

		COOKIECUTTER = "It look friendly.",
		COOKIECUTTERSHELL = "Ha ha! Mine now!",
		COOKIECUTTERHAT = "Make good spiky hat!",
		SALTSTACK =
		{
			GENERIC = "Weird rocks, florp.",
			MINED_OUT = "Nothing left for taking.",
			GROWING = "It growing!",
		},
		SALTROCK = "Weird rock.",
		SALTBOX = "Good place for hiding tasty things.",

		TACKLESTATION = "That not how you treat fish, florp!",
		TACKLESKETCH = "Ooooh, pictures!",

        MALBATROSS = "Bad bird!",
        MALBATROSS_FEATHER = "Stole it from the bad bird!",
        MALBATROSS_BEAK = "Squawk! Squawk! Hee-hee...",
        MAST_MALBATROSS_ITEM = "Birdy sail!",
        MAST_MALBATROSS = "Make boat fly! No? Aww...",
		MALBATROSS_FEATHERED_WEAVE = "Made from bird!",

        GNARWAIL =
        {
            GENERIC = "You a weird looking fish, florp.",
            BROKENHORN = "Broken horn not so bad!",
            FOLLOWER = "We friends now!",
            BROKENHORN_FOLLOWER = "Broken horn not so bad!",
        },
        GNARWAIL_HORN = "Ha ha! Mine now!",

        WALKINGPLANK = "Jumpy board!",
        OAR = "Make boat go!",
		OAR_DRIFTWOOD = "Make boat go!",

		OCEANFISHINGROD = "Gonna catch fish from the big water, florp!",
		OCEANFISHINGBOBBER_NONE = "Need something...",
        OCEANFISHINGBOBBER_BALL = "Bobby floaty!",
        OCEANFISHINGBOBBER_OVAL = "Bobby floaty!",
		OCEANFISHINGBOBBER_CROW = "Feather floaty!",
		OCEANFISHINGBOBBER_ROBIN = "Feather floaty!",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Feather floaty!",
		OCEANFISHINGBOBBER_CANARY = "Feather floaty!",
		OCEANFISHINGBOBBER_GOOSE = "Big feather floaty!",
		OCEANFISHINGBOBBER_MALBATROSS = "Big feather floaty!",

		OCEANFISHINGLURE_SPINNER_RED = "Won't hurt fish, will it?",
		OCEANFISHINGLURE_SPINNER_GREEN = "Won't hurt fish, will it?",
		OCEANFISHINGLURE_SPINNER_BLUE = "Won't hurt fish, will it?",
		OCEANFISHINGLURE_SPOON_RED = "Won't hurt fish, will it?",
		OCEANFISHINGLURE_SPOON_GREEN = "Won't hurt fish, will it?",
		OCEANFISHINGLURE_SPOON_BLUE = "Won't hurt fish, will it?",

		OCEANFISH_SMALL_1 = "Aww, so little!",
		OCEANFISH_SMALL_2 = "Will be new pet! And will feed it and love it and-",
		OCEANFISH_SMALL_3 = "Hi little fishy!",
		OCEANFISH_SMALL_4 = "Little baby fishy!",
		OCEANFISH_SMALL_5 = "Hee-hee, looks silly!",
		OCEANFISH_MEDIUM_1 = "Goopy!",
		OCEANFISH_MEDIUM_2 = "Has such big pretty eyes!",
		OCEANFISH_MEDIUM_3 = "Look like it has little spiky crown on head!",
		OCEANFISH_MEDIUM_4 = "Will you be new pet?",
		OCEANFISH_MEDIUM_5 = "Feel... weird mixed feeling about this one, florp.",

		PONDFISH = "Awwww, it so cute!",
		PONDEEL = "Hello long fishy!",

        FISHMEAT = "No!!",
        FISHMEAT_COOKED = "Won't eat it!",
        FISHMEAT_SMALL = "Was so little...",
        FISHMEAT_SMALL_COOKED = "Glurgh... who do such thing!",
		SPOILED_FISH = "Someone not take care of fish pet!",

		FISH_BOX = "This where scale-less keep fish pets, florp?",
        POCKET_SCALE = "Is funny measure thing.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "This good home for fish!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			BURNING = "AAAAAH! NOOOO!",
			BURNT = "(Sniff) Poor fish home...",
			OWNER = "Weight: {weight}\nCaught by: {owner}\nHee-hee. My fish best.",
		},

		OCEANFISHABLEFLOTSAM = "Oooh! Found mud!",

		CALIFORNIAROLL = "Wait... there fish in here!",
		SEAFOODGUMBO = "Fish looks so sad in there...",
		SURFNTURF = "Blegh! Don't want it!",

		----------------------- ROT STRINGS GO ABOVE HERE ------------------

        --Wortox
--fallback to speech_wilson.lua         WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Put food inside and different food come out, florp?",
            DONE = "Wow!",

			COOKING_LONG = "This take too long!",
			COOKING_SHORT = "Food! Food! Food!",
			EMPTY = "Huh? Nothing in here!",
        },
        
        PORTABLEBLENDER_ITEM = "Shaky shaky!",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Put flavor bits on foodthings!",
            DONE = "All done!",
        },
        SPICEPACK = "Keep foods inside!",
        SPICE_GARLIC = "Mmmm make breath smell nice.",
        SPICE_SUGAR = "YUM!!",
        SPICE_CHILI = "Hot bits!",
        SPICE_SALT = "This sand taste good!",
        MONSTERTARTARE = "Fancy name not make it better, flort.",
        FRESHFRUITCREPES = "Fancy fruit pancake!",
        FROGFISHBOWL = ".........",
        POTATOTORNADO = "Hee-hee, spinny potato!",
        DRAGONCHILISALAD = "Mmmm, thank you fancy cook man!",
        GLOWBERRYMOUSSE = "Oooh, it glowing!!",
        VOLTGOATJELLY = "Ooooooh, it jiggly!",
        NIGHTMAREPIE = "Hee-hee, it has funny face.",
        BONESOUP = "Don't want it, florp",
        MASHEDPOTATOES = "Mushy mash!",
        POTATOSOUFFLE = "Wha-? This potato!!",
        MOQUECA = "There fish inside!",
        GAZPACHO = "Goopy!",
        ASPARAGUSSOUP = "Mmmm...",
        VEGSTINGER = "Fancy spicy juice!",
        BANANAPOP = "Fruit taste even better on stick!",
        CEVICHE = "Blegh. Nuh-uh.",
        SALSA = "Spicy veggie mush!",
        PEPPERPOPPER = "Where the \"pop\", flort? It just spicy!",

        TURNIP = "Crunchy snack!",
        TURNIP_COOKED = "Roasty!",
        TURNIP_SEEDS = "Make more turnip!",
        
        GARLIC = "Make breath smell nice.",
        GARLIC_COOKED = "Mmm... hot smelly snack!",
        GARLIC_SEEDS = "Make more garlic!",
        
        ONION = "Mmm-mmmm, crunchy!",
        ONION_COOKED = "Smell so good, florp!",
        ONION_SEEDS = "Baby onions.",
        
        POTATO = "Good dirt veggie.",
        POTATO_COOKED = "Mmm, hot potato!",
        POTATO_SEEDS = "Put in ground for more potato!",
        
        TOMATO = "Big juicy tomato!",
        TOMATO_COOKED = "Squishy.",
        TOMATO_SEEDS = "Make more tomato!",

        ASPARAGUS = "Snack sticks!", 
        ASPARAGUS_COOKED = "Hot snack sticks!",
        ASPARAGUS_SEEDS = "Make more snacks, florp!",

        PEPPER = "Glaaagh! Mouth on fire!",
        PEPPER_COOKED = "Why make pepper even hotter?",
        PEPPER_SEEDS = "Make more peppers!",

        WEREITEM_BEAVER = "There something spilling out its belly.",
        WEREITEM_GOOSE = "Wanna play with doll!",
        WEREITEM_MOOSE = "Wicker-lady say should eat with mouth closed.",

        MERMHAT = "Make scale-less look like friendly Mermfolk!",
        MERMTHRONE =
        {
            GENERIC = "Good seat for Merm King!",
            BURNT = "WHO DO THIS?!",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "There lots of Kings in fairy stories... look easy to make!",
            BURNT = "NOOOOOO!!",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "Made it with own claws!",
            BURNT = "WHYYYYY!?",
        },

        MERMWATCHTOWER_REGULAR = "Need royal guard to protect new King!",
        MERMWATCHTOWER_NOKING = "Royal guard need King to protect...",
        MERMKING = "Yay! You look just like Kings from fairy stories!",
        MERMGUARD = "Will grow up big and strong like that one day!",
        MERM_PRINCE = "Need to fatten up if you gonna be proper King!",

        SQUID = "Stay still, little squiddies!",
    },

    DESCRIBE_GENERIC = "What that?",
    DESCRIBE_TOODARK = "It really, really dark.",
    DESCRIBE_SMOLDERING = "Smell something...",
    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Blegh, who wanna eat that?",
		WINTERSFEASTFUEL = "Mmmmm, sweets!",
    },
	
	BUILD_MERMSTRUCTURES = "Built it with own claws!",

}
