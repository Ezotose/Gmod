include('shared.lua')

net.Receive( "NPCPS", function()
	RunConsoleCommand( "ps_shop" )
end )

hook.Add("PostDrawOpaqueRenderables", "NPCPS", function()
	for _, ent in pairs (ents.FindByClass("ps_npc")) do
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 500 then
			local Ang = ent:GetAngles()

			Ang:RotateAroundAxis( Ang:Forward(), 90)
			Ang:RotateAroundAxis( Ang:Right(), -90)

			cam.Start3D2D(ent:GetPos()+ent:GetUp()*76, Ang, 0.10)
				draw.SimpleTextOutlined( "Pointshop", "npc_name", 0, 0, Color(255,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 0, Color(255,255,255,255) )
			cam.End3D2D()
		end
	end
end)



surface.CreateFont( "npc_name", { 
	font = "Arial",
	extended = true,
	size = 50,
	weight = 1000
} )