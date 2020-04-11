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
    name = "love_building",
    label = "Love building",
    options =   {
                {description = "YES", data = 0},
                {description = "NO", data = 1},
                },
    default = 1,
    },

    {
    name = "love_fish",
    label = "Love fish",
    options =   {
                {description = "YES", data = 0},
                {description = "NO", data = 1},
                },
    default = 1,
    },

    {
    name = "love_rain",
    label = "Love rain",
    options =   {
                {description = "YES", data = 0},
                {description = "NO", data = 1},
                },
    default = 1,
    },

    {
    name = "less_wetness",
    label = "Less wetness",
    options =   {
                {description = "YES", data = 0},
                {description = "NO", data = 1},
                },
    default = 1,
    },

    {
    name = "no_drowning",
    label = "No drowning",
    options =   {
                {description = "YES", data = 0},
                {description = "NO", data = 1},
                },
    default = 1,
    },
}

