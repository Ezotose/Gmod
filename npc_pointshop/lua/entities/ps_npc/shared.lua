--[[
Creer en utilisant les NPC de Laurent
https://www.youtube.com/watch?v=6Dld51MQaSw
]]--

ENT.Base	    			= "base_ai"
ENT.Type	    			= "ai"
ENT.PrintName				= "Npc Pointshop"
ENT.Author					= "Ezotose"
ENT.Category				= "Other"
ENT.Contact					= "ezotose[at]gmail.com"
ENT.Instructions			= "Approchez vous du NPC et actionnez votre touche [USE]"
ENT.Spawnable				= true
ENT.AdminSpawnable			= true
ENT.AutomaticFrameAdvance	= true

function ENT:SetAutomaticFrameAdvance(byUsingAnim)
	self.AutomaticFrameAdvance = byUsingAnim
end