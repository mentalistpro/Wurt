version                     = "0.6" 
name                        = "Wurt [DST]"
description                 = "Wurt from DST"
author                      = "mentalistpro"
forumthread                 = " "
api_version                 = 6
priority                    = -1

dont_starve_compatible      = true
shipwrecked_compatible      = true
reign_of_giants_compatible  = true
hamlet_compatible           = true

icon_atlas                  = "modicon.xml"
icon                        = "modicon.tex"

configuration_options       =
{
	{
	name = "qol_buff",
	label = "QoL Buff?",
	options =	{
				{description = "No", data = 0},
				{description = "Yes", data = 1},
				},
	default = 0,
	},
}