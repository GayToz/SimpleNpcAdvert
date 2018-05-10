net.Receive("NPCADVERT",function()

    local npc = net.ReadEntity()


local Adv_Frame = vgui.Create( "DFrame" )
	Adv_Frame:SetTitle( "" )
	Adv_Frame:SetDraggable( true )
	Adv_Frame:ShowCloseButton( false )
	Adv_Frame:SetSize( ScrW() * 0.220, ScrH() * 0.400 )
	Adv_Frame:Center()
	Adv_Frame:MakePopup()
	Adv_Frame.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(81,81,81,255) ) 
	    draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * -0.31, w, h, Color( 0, 0, 0, 255 ) ) 
	    draw.DrawText( Simple_Npc_Advert.TitreFrame, "FontServ", ScrW() * 0.1080, ScrH() * 0.020, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( Simple_Npc_Advert.TextBase, "TextEntryFont", ScrW() * 0.1090, ScrH() * 0.110, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( "$"..Simple_Npc_Advert.PriceAdvert.."", "FontTextButton", ScrW() * 0.1870, ScrH() * 0.165, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( "$"..Simple_Npc_Advert.PriceAdvertAno.."", "FontTextButton", ScrW() * 0.0280, ScrH() * 0.230, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( "$"..Simple_Npc_Advert.PriceAdvertRepet.."", "FontTextButton", ScrW() * 0.1870, ScrH() * 0.295, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	end

    local Adv_Button1 = vgui.Create( "DButton", Adv_Frame )
    Adv_Button1:SetText( Simple_Npc_Advert.NameAdvertButton )
    Adv_Button1:SetPos( ScrW() * 0.0025, ScrH() * 0.160 )
    Adv_Button1:SetFont("FontTextButton")
    Adv_Button1:SetSize( 250, 40 )
    Adv_Button1.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_Button1.DoClick = function()
    	Adv_Frame:Close()
    	AdvertFrame(npc)
    end

    local Adv_Ano = vgui.Create( "DButton", Adv_Frame )
    Adv_Ano:SetText( Simple_Npc_Advert.NameAnoButton )
    Adv_Ano:SetPos( ScrW() * 0.0600, ScrH() * 0.225 )
    Adv_Ano:SetFont("FontTextButton")
    Adv_Ano:SetSize( 250, 40 )
    Adv_Ano.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_Ano.DoClick = function()
    	Adv_Frame:Close()
    	AnoFrame(ply)
    end

    local Adv_Button2 = vgui.Create( "DButton", Adv_Frame )
    Adv_Button2:SetText( Simple_Npc_Advert.NameAdvertRepet )
    Adv_Button2:SetPos( ScrW() * 0.0025, ScrH() * 0.290 )
    Adv_Button2:SetFont("FontTextButton")
    Adv_Button2:SetSize( 250, 40 )
    Adv_Button2.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_Button2.DoClick = function()
    	Adv_Frame:Close()
        PubRepetitive(npc)
    end

    local Adv_Close = vgui.Create( "DButton", Adv_Frame )
    Adv_Close:SetText( Simple_Npc_Advert.TextClose )
    Adv_Close:SetPos( ScrW() * 0.0025, ScrH() * 0.350 )
    Adv_Close:SetFont("FontTextButton")
    Adv_Close:SetSize( 343, 40 )
    Adv_Close.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_Close.DoClick = function()
    	Adv_Frame:Close()
    end

end)

surface.CreateFont( "FontServ", {	font = "Roboto",	size = 55,	weight = 500,	blursize = 0,	scanlines = 0,	antialias = true,} )

surface.CreateFont( "TitleFont", {	font = "Roboto", 	size = 45,	weight = 500,	blursize = 0,	scanlines = 0,	antialias = true,} )

surface.CreateFont( "FontTextButton", {	font = "Roboto", 	size = 30,weight = 500,	blursize = 0,	scanlines = 0,	antialias = true,} )

surface.CreateFont( "TextEntryFont", {	font = "Roboto", 	size = 23,weight = 500,	blursize = 0,	scanlines = 0,	antialias = true,} )

surface.CreateFont( "TextBox", {  font = "Roboto",    size = 18,weight = 500, blursize = 0,   scanlines = 0,  antialias = true,} )

/*------------------------------------------
            ANO ADVERT FRAME
------------------------------------------*/

local function AnoFrame(npc)
    
	local Adv_AnoFrame = vgui.Create( "DFrame" )
	Adv_AnoFrame:SetTitle( "" )
	Adv_AnoFrame:SetDraggable( true )
	Adv_AnoFrame:ShowCloseButton( false )
	Adv_AnoFrame:SetSize( ScrW() * 0.220, ScrH() * 0.451 )
	Adv_AnoFrame:Center()
	Adv_AnoFrame:MakePopup()
	Adv_AnoFrame.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(81,81,81,255) ) 
	    draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * -0.375, w, h, Color( 0, 0, 0, 255 ) ) 
	    draw.DrawText( "ADVERT ANONYME", "TitleFont", ScrW() * 0.1100, ScrH() * 0.010, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( Simple_Npc_Advert.TextColor, "FontTextButton", ScrW() * 0.1100, ScrH() * 0.135, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	end

	local Adv_AnoText = vgui.Create( "DTextEntry", Adv_AnoFrame )
	Adv_AnoText:SetPos( ScrW() * 0.0025, ScrH() * 0.080 )
	Adv_AnoText:SetFont("TextEntryFont")
	Adv_AnoText:SetSize( 343, 50 )
	Adv_AnoText:SetText( Simple_Npc_Advert.TextPub )
	Adv_AnoText:SetTextColor(Color(0,0,0))

    local Adv_AnoColorPicker = vgui.Create( "DColorMixer", Adv_AnoFrame )
    Adv_AnoColorPicker:SetSize( 343, 150 )
    Adv_AnoColorPicker:SetPos( ScrW() * 0.0025, ScrH() * 0.170 )
    Adv_AnoColorPicker:SetPalette( true )
    Adv_AnoColorPicker:SetAlphaBar( true )
    Adv_AnoColorPicker:SetWangs( true )
    Adv_AnoColorPicker:SetColor( Color( 255, 255, 255 ) )

	local Adv_AnoEnvoyer = vgui.Create( "DButton", Adv_AnoFrame )
    Adv_AnoEnvoyer:SetText( "ENVOYER" )
    Adv_AnoEnvoyer:SetPos( ScrW() * 0.0610, ScrH() * 0.348 )
    Adv_AnoEnvoyer:SetFont("FontTextButton")
    Adv_AnoEnvoyer:SetSize( 150, 35 )
    Adv_AnoEnvoyer.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_AnoEnvoyer.DoClick = function()
    Adv_AnoText:GetValue()
    net.Start( "GayToz_Advert:Ano" )
        net.WriteEntity(npc)
        net.WriteString( Adv_AnoText:GetValue() )
        local color2 = Adv_AnoColorPicker:GetColor()
        net.WriteColor(Color(color2.r,color2.g,color2.b))
    net.SendToServer()
    Adv_AnoFrame:Close()
    end

	local Adv_AnoClose = vgui.Create( "DButton", Adv_AnoFrame )
    Adv_AnoClose:SetText( Simple_Npc_Advert.TextClose )
    Adv_AnoClose:SetPos( ScrW() * 0.0025, ScrH() * 0.395 )
    Adv_AnoClose:SetFont("FontTextButton")
    Adv_AnoClose:SetSize( 343, 40 )
    Adv_AnoClose.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_AnoClose.DoClick = function()
    	Adv_AnoFrame:Close()
    end

end

/*------------------------------------------
              ADVERT FRAME
------------------------------------------*/

local function AdvertFrame(npc)

local Adv_PubFrame = vgui.Create( "DFrame" )
	Adv_PubFrame:SetTitle( "" )
	Adv_PubFrame:SetDraggable( true )
	Adv_PubFrame:ShowCloseButton( false )
	Adv_PubFrame:SetSize( ScrW() * 0.220, ScrH() * 0.451 )
	Adv_PubFrame:Center()
	Adv_PubFrame:MakePopup()
	Adv_PubFrame.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(81,81,81,255) ) 
	    draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * -0.375, w, h, Color( 0, 0, 0, 255 ) ) 
	    draw.DrawText( "ADVERT SIMPLE", "TitleFont", ScrW() * 0.1100, ScrH() * 0.010, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	    draw.DrawText( Simple_Npc_Advert.TextColor, "FontTextButton", ScrW() * 0.1100, ScrH() * 0.135, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
	end

	local Adv_PubText = vgui.Create( "DTextEntry", Adv_PubFrame )
	Adv_PubText:SetPos( ScrW() * 0.0025, ScrH() * 0.080 )
	Adv_PubText:SetFont("TextEntryFont")
	Adv_PubText:SetSize( 343, 50 )
	Adv_PubText:SetText( Simple_Npc_Advert.TextPub )
	Adv_PubText:SetTextColor(Color(0,0,0))

	local Adv_PubColorPicker = vgui.Create( "DColorMixer", Adv_PubFrame )
    Adv_PubColorPicker:SetSize( 343, 150 )
    Adv_PubColorPicker:SetPos( ScrW() * 0.0025, ScrH() * 0.170 )
    Adv_PubColorPicker:SetPalette( true )
    Adv_PubColorPicker:SetAlphaBar( true )
    Adv_PubColorPicker:SetWangs( true )
    Adv_PubColorPicker:SetColor( Color( 255, 255, 255 ) )

	local Adv_PubEnvoyer = vgui.Create( "DButton", Adv_PubFrame )
    Adv_PubEnvoyer:SetText( "ENVOYER" )
    Adv_PubEnvoyer:SetPos( ScrW() * 0.0610, ScrH() * 0.348 )
    Adv_PubEnvoyer:SetFont("FontTextButton")
    Adv_PubEnvoyer:SetSize( 150, 35 )
    Adv_PubEnvoyer.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_PubEnvoyer.DoClick = function()
    Adv_PubText:GetValue()
    Adv_PubColorPicker:GetColor()
    net.Start( "GayToz_Advert:Advert" )
        net.WriteEntity(npc)
        net.WriteString( Adv_PubText:GetValue() )
        local color = Adv_PubColorPicker:GetColor()
        net.WriteColor(Color(color.r,color.g,color.b))
    net.SendToServer()
    Adv_PubFrame:Close()
    end

	local Adv_PubClose = vgui.Create( "DButton", Adv_PubFrame )
    Adv_PubClose:SetText( Simple_Npc_Advert.TextClose )
    Adv_PubClose:SetPos( ScrW() * 0.0025, ScrH() * 0.395 )
    Adv_PubClose:SetFont("FontTextButton")
    Adv_PubClose:SetSize( 343, 40 )
    Adv_PubClose.Paint = function( self, w, h ) 
		draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
	end
    Adv_PubClose.DoClick = function()
    	Adv_PubFrame:Close()
    end

end

/*------------------------------------------
        ADVERT REPETITIF FRAME
------------------------------------------*/

local function PubRepetitive(npc)
    local Adv_RepetFrame = vgui.Create( "DFrame" )
    Adv_RepetFrame:SetTitle( "" )
    Adv_RepetFrame:SetDraggable( true )
    Adv_RepetFrame:ShowCloseButton( false )
    Adv_RepetFrame:SetSize( ScrW() * 0.220, ScrH() * 0.451 )
    Adv_RepetFrame:Center()
    Adv_RepetFrame:MakePopup()
    Adv_RepetFrame.Paint = function( self, w, h ) 
        draw.RoundedBox( 0, 0, 0, w, h, Color(81,81,81,255) ) 
        draw.RoundedBox( 0, ScrW() * 0.0, ScrH() * -0.375, w, h, Color( 0, 0, 0, 255 ) ) 
        draw.DrawText( "ADVERT REPETITIF", "TitleFont", ScrW() * 0.1100, ScrH() * 0.010, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
        draw.DrawText( Simple_Npc_Advert.TextColor, "FontTextButton", ScrW() * 0.1100, ScrH() * 0.135, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
        draw.DrawText( "Votre Advert Se Mettra", "TextBox", ScrW() * 0.1550, ScrH() * 0.3410, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
        draw.DrawText( "Chat Chaque "..Simple_Npc_Advert.Seconds.." Secondes", "TextBox", ScrW() * 0.1550, ScrH() * 0.3750, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
        draw.DrawText( ""..Simple_Npc_Advert.NumberAdvert.." Fois Dans Le", "TextBox", ScrW() * 0.1550, ScrH() * 0.3580, Color( 255, 255, 255, 255 ), TEXT_ALIGN_CENTER )
    end

    local Adv_RepetText = vgui.Create( "DTextEntry", Adv_RepetFrame )
    Adv_RepetText:SetPos( ScrW() * 0.0025, ScrH() * 0.080 )
    Adv_RepetText:SetFont("TextEntryFont")
    Adv_RepetText:SetSize( 343, 50 )
    Adv_RepetText:SetText( Simple_Npc_Advert.TextPub )
    Adv_RepetText:SetTextColor(Color(0,0,0))

    local Adv_RepetColorPicker = vgui.Create( "DColorMixer", Adv_RepetFrame )
    Adv_RepetColorPicker:SetSize( 343, 150 )
    Adv_RepetColorPicker:SetPos( ScrW() * 0.0025, ScrH() * 0.170 )
    Adv_RepetColorPicker:SetPalette( true )
    Adv_RepetColorPicker:SetAlphaBar( true )
    Adv_RepetColorPicker:SetWangs( true )
    Adv_RepetColorPicker:SetColor( Color( 255, 255, 255 ) )

    local Adv_RepetEnvoyer = vgui.Create( "DButton", Adv_RepetFrame )
    Adv_RepetEnvoyer:SetText( "ENVOYER" )
    Adv_RepetEnvoyer:SetPos( ScrW() * 0.0025, ScrH() * 0.348 )
    Adv_RepetEnvoyer:SetFont("FontTextButton")
    Adv_RepetEnvoyer:SetSize( 150, 35 )
    Adv_RepetEnvoyer.Paint = function( self, w, h ) 
        draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
    end
    Adv_RepetEnvoyer.DoClick = function ()
    Adv_RepetText:GetValue()
    Adv_RepetColorPicker:GetColor()
    net.Start( "GayToz_Advert:Repetitive" )
        net.WriteEntity(npc)
        net.WriteString( Adv_RepetText:GetValue() )
        local color3 = Adv_RepetColorPicker:GetColor()
        net.WriteColor(Color(color3.r,color3.g,color3.b))
    net.SendToServer()
    Adv_RepetFrame:Close()

    end

    local Adv_RepetClose = vgui.Create( "DButton", Adv_RepetFrame )
    Adv_RepetClose:SetText( Simple_Npc_Advert.TextClose )
    Adv_RepetClose:SetPos( ScrW() * 0.0025, ScrH() * 0.395 )
    Adv_RepetClose:SetFont("FontTextButton")
    Adv_RepetClose:SetSize( 343, 40 )
    Adv_RepetClose.Paint = function( self, w, h ) 
        draw.RoundedBox( 0, 0, 0, w, h, Color(255,255,255,255) ) 
    end
    Adv_RepetClose.DoClick = function()
        Adv_RepetFrame:Close()
    end
end