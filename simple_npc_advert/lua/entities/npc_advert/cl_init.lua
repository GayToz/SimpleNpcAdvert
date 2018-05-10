include('shared.lua')

surface.CreateFont( "FontTitle", {
	font = "Roboto", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 70,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )

function ENT:Draw()
	self:DrawModel()

	local Ang = self:GetAngles()

	Ang:RotateAroundAxis( Ang:Forward(), 90)
	Ang:RotateAroundAxis( Ang:Right(), -90)


	cam.Start3D2D(self:GetPos()+self:GetUp()*76, Ang, 0.10)
		draw.SimpleTextOutlined( Simple_Npc_Advert.NomNpc, "FontTitle", 0, 0, Simple_Npc_Advert.ColorTextNpc, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER, 0, Color(255,255,255,255) )
	cam.End3D2D()

end