version 	= "1.0" 
name 		= "Wurt [DST]"
description = "Wurt from DST"
author 		= "mentalistpro"
forumthread = " "
api_version = 6

priority = 0

dont_starve_compatible 		= true
shipwrecked_compatible 		= true
reign_of_giants_compatible 	= true
hamlet_compatible			= true

icon_atlas 	= "modicon.xml"
icon		= "modicon.tex"

configuration_options =
{
    {
        name = "language",
        label = "Language",
        options =   {
	                    {description = "Automatic", data = "AUTO"},					
                        {description = "English", data = "ENG"},
                        {description = "Chinese", data = "CHI"}, 
                    },
        default = "AUTO",
    },
   
 }