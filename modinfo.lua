version                     = "1.1" 
name                        = "Wurt"
description                 = "Wurt, ported from DST, a young female merm."
author                      = "mentalistpro"
forumthread                 = " "
api_version                 = 6
priority                    = -2        --load after Clever Disguise and Mermhouse Crafting

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
    options =   {
                {description = "No", data = 0},
                {description = "Yes", data = 1},
                },
    default = 0,
    },
}