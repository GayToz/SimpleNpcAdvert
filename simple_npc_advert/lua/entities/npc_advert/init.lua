AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include('shared.lua')

function ENT:Initialize()
	self:SetModel( Simple_Npc_Advert.ModelNpc )
	self:SetHullType( HULL_HUMAN )
	self:SetHullSizeNormal()
	self:SetNPCState( NPC_STATE_SCRIPT )
	self:SetSolid( SOLID_BBOX )
	self:CapabilitiesAdd( CAP_ANIMATEDFACE || CAP_TURN_HEAD )
	self:SetUseType( SIMPLE_USE )
	self:DropToFloor()
	self:SetMaxYawSpeed(90) 
end

function ENT:OnTakeDamage()
	return false
end

util.AddNetworkString( "NPCADVERT" ) 

function ENT:AcceptInput( name, activator, caller )
  if name == "Use" and caller:IsPlayer() then 
    net.Start("NPCADVERT")
    net.WriteEntity(self)
    net.Send(caller) 
  end
end