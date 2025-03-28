Lang = "Portugues_BR"

Config = {
	--======================= DEVELOPMENT ==============================--
	Debug                    = false, -- if your server is live set this to false.  to true only if you are testing things

	InventoryOrder           = "items", -- items or weapons what should should first in inventory

	DevMode                  = false, -- if your server is live set this to false.  to true only if you are testing things (auto load inventory when script restart and before character selection. Alos add /getInv command)
	dbupdater                = true,
	--======================= CONFIGURATION =============================--
	ShowCharacterNameOnGive  = false, -- when giving an item, show the character name of nearby players instead of their player ID. if set to false, show the player ID

	DoubleClickToUse         = true, -- if toggled to false, items in inventory will right click then left click "use"

	NewPlayers               = false, --- if you dont want new players to give money or items then set to true. this can avoid cheaters giving stuff on first join

	CoolDownNewPlayer        = 120, -- in seconds how long they have to wait before they can give items or money

	-- GOLD ITEM LIKE DOLLARS
	UseRolItem               = false, -- to show rol in inventory

	UseGoldItem              = true,

	AddGoldItem              = true,   -- Should there be an item in inventory to represent gold

	AddDollarItem            = true,    -- Should there be an item in inventory to represent dollars

	AddAmmoItem              = true,    -- Should there be an item in inventory to represent the gun belt

	InventorySearchable      = true,    -- Should the search bar appear in inventories

	InventorySearchAutoFocus = true,    -- Search autoofocuses when you type

	DisableDeathInventory    = true,    -- prevent the ability to access inventory while dead

	OpenKey                  = 0xC1989F95, -- I
	UseFilter                = true,    -- if true then will use the filter opening inventory

	PickupKey                = 0xF84FA74F, --RMB mouse PROMPT PICKUP

	discordid                = true,    -- turn to true if ur using discord whitelist

	DeleteOnlyDontDrop       = true,   -- if true then dropping items only deletes from inventory and box on the floor is not created

	UseLanternPutOnBelt      = true,    -- if true then lanterns will be put on belt

	WeightMeasure            = "kg",    -- Weight measure (kg, lbs, etc)

	-- =================== CLEAR ITEMS WEAPONS MONEY GOLD =====================--

	UseClearAll              = true, -- if you want to use the clear item function

	OnPlayerRespawn          = {
		Money = {
			JobLock         = { "police", "doctor" }, -- wont remove from these jobs
			ClearMoney      = true,          -- if true then removes all money from player
			MoneyPercentage = false,         -- if false wont use percentage if you add number   0.1 = 10% of money user have instead of all
		},
		Items = {
			JobLock       = { "police", "doctor" },
			itemWhiteList = { "consumable_raspberrywater", "ammorevolvernormal" }, -- dont delete these items
			AllItems      = true,                                         -- if true then removes all items from player
		},
		Weapons = {
			JobLock           = { "police", "doctor" },
			WeaponWhitelisted = { "WEAPON_MELEE_KNIFE", "WEAPON_BOW" }, -- dont delete these weapons
			AllWeapons        = true,                          -- if true then removes all weapons from player
		},
		Ammo = {
			JobLock = { "police", "doctor" }, -- wont remove from these jobs
			AllAmmo = true,          -- if true then removes all ammo from player
		},
		Gold = {
			JobLock        = { "police", "doctor" },
			ClearGold      = false,
			GoldPercentage = false,
		}
	},

	-- HOW MANY WEAPONS ALLOWED PER PLAYER FOR ITEMS IS IN VORP CORE CONFIG
	MaxItemsInInventory      = {
		Weapons = 6,
	},

	-- HERE YOU CAN SET THE MAX AMOUNT OF WEAPONS PER JOB (IF YOU WANT)
	JobsAllowed              = {
		police = 10 -- job name and max weapons allowed dont allow less than the above
	},

	-- FIRST JOIN
	startItems               = {
		apple = 5, --ITEMS SAME NAME AS IN DATABASE
		water = 4   --AMMO SAME NAME AS I NTHE DATABASE
	},

	startWeapons             = {
		"WEAPON_MELEE_KNIFE" --WEAPON HASH NAME
	},

	-- items that dont get added up torwards your max weapon count
	notweapons               = {
		WEAPON_KIT_BINOCULARS_IMPROVED = true,
		WEAPON_KIT_BINOCULARS = true,
		WEAPON_FISHINGROD = true,
		WEAPON_KIT_CAMERA = true,
		WEAPON_kIT_CAMERA_ADVANCED = true,
		WEAPON_MELEE_LANTERN = true,
		WEAPON_MELEE_DAVY_LANTERN = true,
		WEAPON_MELEE_LANTERN_HALLOWEEN = true,
		WEAPON_KIT_METAL_DETECTOR = true,
		WEAPON_MELEE_HAMMER = true,
		WEAPON_MELEE_KNIFE = true,
	},
	-- weapons that are considered non throwables
	nonAmmoThrowables        = {
		WEAPON_MELEE_CLEAVER = true,
		WEAPON_MELEE_HATCHET = true,
		WEAPON_MELEE_HATCHET_HUNTER = true
	},
	-- weapons that dont need serial numbers
	noSerialNumber           = {
		WEAPON_MELEE_CLEAVER = true,
		WEAPON_MELEE_HATCHET = true,
		WEAPON_MELEE_HATCHET_HUNTER = true,
		WEAPON_MELEE_KNIFE = true,
		WEAPON_KIT_BINOCULARS_IMPROVED = true,
		WEAPON_KIT_BINOCULARS = true,
		WEAPON_FISHINGROD = true,
		WEAPON_KIT_CAMERA = true,
		WEAPON_kIT_CAMERA_ADVANCED = true,
		WEAPON_MELEE_LANTERN = true,
		WEAPON_MELEE_DAVY_LANTERN = true,
		WEAPON_MELEE_LANTERN_HALLOWEEN = true,
		WEAPON_KIT_METAL_DETECTOR = true,
		WEAPON_MELEE_HAMMER = true,
		WEAPON_BOW = true,
		WEAPON_BOW_IMPROVED = true,
		WEAPON_LASSO = true,
		WEAPON_LASSO_REINFORCED = true,
	}
}
