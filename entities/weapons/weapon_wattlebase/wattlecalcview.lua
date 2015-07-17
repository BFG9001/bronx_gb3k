
function SWEP:WatCalcViewThink( ply, origin, angles, fov )

end

function SWEP:WatCalcView( ply, origin, angles, fov )
	local view = {}
	view.origin = origin
	if(self:IsAiming()) then
		view.angles = angles
	else
		view.angles = angles - ply:GetViewPunchAngles()*(1-WatRecoilTrack)
	end
	
	return view
end

//Walking, Sprinting, Irons
local WalkIncrementer = 0
local SprintIncrementer = 0
SWEP.TimeBetweenSteps = 0.36
SWEP.baseviewmodel = {}
SWEP.baseviewmodel.origin = Vector(0,0,0)
SWEP.baseviewmodel.angles = Angle(0,0,0)
function SWEP:WatViewModelCalcViewBase( ply, origin, angles, fov )

	if(game.SinglePlayer()) then
		self.FAT = self:GetFAT()
	end

	local xyvel = ply:GetVelocity()
	xyvel.z = 0
	local xyspeed = xyvel:Length()

	//Walk Anims
	self.CurWalkPos = Vector(0,0,0)
	self.CurWalkAng = Angle(0,0,0)
	if( ((ply:KeyDown(IN_FORWARD) || ply:KeyDown(IN_MOVERIGHT) || ply:KeyDown(IN_BACK) || ply:KeyDown(IN_MOVELEFT)) && !self:IsSprinting() && ply:OnGround()) || (self:IsSprinting() && (CurTime() < self:GetFAT())) ) then
		WalkIncrementer = WalkIncrementer + math.pi*FrameTime()*(1/self.TimeBetweenSteps)
		self.CurWalkPos = Bezier(self.WalkPos[1], self.WalkPos[2], self.WalkPos[3], (-math.cos(WalkIncrementer)/2)+0.5)
		self.CurWalkAng = Bezier(self.WalkAng[1], self.WalkAng[2], self.WalkAng[3], (-math.cos(WalkIncrementer)/2)+0.5)
		self.CurWalkPos = self.CurWalkPos*(xyspeed/250)
		self.CurWalkAng = self.CurWalkAng*(xyspeed/250)
		//rip
	else
		WalkIncrementer = 0
		self.CurWalkPos = Vector(0,0,0)
		self.CurWalkAng = Angle(0,0,0)
	end
	
	//Sprint Anims
	self.CurSprintPos = Vector(0,0,0)
	self.CurSprintAng = Angle(0,0,0)
//	if( self:IsSprinting() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) ) && (CurTime() + (ply:Ping()/1000) > self:GetFRT()) then
	if(self:IsSprinting() && (CurTime() + (ply:Ping()/1000) > self.FAT)) then
		SprintIncrementer = SprintIncrementer + math.pi*FrameTime()*(1/self.TimeBetweenSteps)
		self.CurSprintPos = Bezier(self.SprintPos[1], self.SprintPos[2], self.SprintPos[3], (-math.cos(SprintIncrementer)/2)+0.5) - self.VMPosOffset
		self.CurSprintAng = Bezier(self.SprintAng[1], self.SprintAng[2], self.SprintAng[3], (-math.cos(SprintIncrementer)/2)+0.5) - self.VMAngOffset
	else
		SprintIncrementer = 0
		self.CurSprintPos = Vector(0,0,0)
		self.CurSprintAng = Angle(0,0,0)
	end
	
	//Ironsights
	self.CurIronPos = Vector(0,0,0)
	self.CurIronAng = Angle(0,0,0)
	if( self:IsAiming() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) ) then
		WatAimProg = math.Approach(WatAimProg, 1, FrameTime()*4)
		local t
		if(xyspeed > 50) then
			t = ((-math.cos(WalkIncrementer)/2)+0.5)
		else
			t = 0.5
		end
		self.CurIronPos = self.IronSightsPos - (self.VMPosOffset + self.CurWalkPos + self.CurSprintPos) + Bezier(Vector(-0.05,0,0), Vector(0,0,0), Vector(0.05,0,0), t)*(xyspeed/300)
		self.CurIronAng = self.IronSightsAng - (self.VMAngOffset + self.CurWalkAng + self.CurSprintAng) + Bezier(Angle(-0.3,-0.2,0), Angle(0.5,0,0), Angle(-0.3,0.2,0), t)*(xyspeed/300)
	else
		WatAimProg = math.Approach(WatAimProg, 0, FrameTime()*4)
		IronsightPos = Vector(0,0,0)
		IronsightAng = Angle(0,0,0)
	end

	self.baseviewmodel.origin = SmoothApproachVector(self.baseviewmodel.origin, self.CurWalkPos + self.CurSprintPos + self.VMPosOffset + self.CurIronPos, FrameTime()*10)
	self.baseviewmodel.angles = SmoothApproachAngle(self.baseviewmodel.angles, self.CurWalkAng + self.CurSprintAng + self.VMAngOffset + self.CurIronAng, FrameTime()*10)
	
	return self.baseviewmodel
end

//Inspection
SWEP.SIT = 0
SWEP.CurInspectPos = Vector(0,0,0)
SWEP.CurInspectAng = Angle(0,0,0)
SWEP.inspectviewmodel = {}
SWEP.inspectviewmodel.origin = Vector(0,0,0)
SWEP.inspectviewmodel.angles = Angle(0,0,0)
local inspectOldLST = 0
function SWEP:WatViewModelCalcViewInspect( ply, origin, angles, fov )
	
	if(ply:KeyDown(IN_USE) && ply:KeyDown(IN_ATTACK2) ) then
		self.SIT = CurTime()
	end
	
	if( self:IsSprinting() || self:GetReloading() || (CurTime() + (ply:Ping()/1000) < self:GetFAT()) ) then
		self.SIT = 0
	end
	if( (inspectOldLST != self:GetLST()) || self:IsAiming()  ) then
		self.SIT = 0
		self.inspectviewmodel.origin = Vector(0,0,0)
		self.inspectviewmodel.angles = Angle(0,0,0)
	end
	inspectOldLST = self:GetLST()
	
	if (CurTime() < (self.SIT + 5)) then
		if (CurTime() < (self.SIT + 3)) then
			self.CurInspectPos = self.InspectPos[1] - self.VMPosOffset
			self.CurInspectAng = self.InspectAng[1] - self.VMAngOffset
		else
			self.CurInspectPos = self.InspectPos[2] - self.VMPosOffset
			self.CurInspectAng = self.InspectAng[2] - self.VMAngOffset
		end
	else
		self.CurInspectPos = Vector(0,0,0)
		self.CurInspectAng = Angle(0,0,0)
	end
	
	self.inspectviewmodel.origin = SmoothApproachVector(self.inspectviewmodel.origin, self.CurInspectPos, FrameTime()*3)
	self.inspectviewmodel.angles = SmoothApproachAngle(self.inspectviewmodel.angles, self.CurInspectAng, FrameTime()*3)
	
	return self.inspectviewmodel
end

//Weapon Sway
SWEP.CEyeAng = Angle(0,0,0)
SWEP.swayviewmodel = {}
SWEP.swayviewmodel.origin = Vector(0,0,0)
SWEP.swayviewmodel.angles = Angle(0,0,0)
function SWEP:WatViewModelCalcViewSway( ply, origin, angles, fov )
	local eangles = ply:EyeAngles()
	local targang = eangles
	self.CEyeAng = SmoothApproachAngle(self.CEyeAng, targang, FrameTime()*10)
	local dCEyeAng = Angle(math.AngleDifference(targang.pitch, self.CEyeAng.pitch), math.AngleDifference(targang.yaw, self.CEyeAng.yaw), math.AngleDifference(targang.roll, self.CEyeAng.roll))
	//Half-Life style
//	self.swayviewmodel.origin = Vector(-dCEyeAng.yaw/60, 0, dCEyeAng.pitch/60)
	local posdiv = self.SwayPosDiv or 45
	local angdiv = self.SwayAngDiv or 10
	if(!self.ViewModelFlip) then
		self.swayviewmodel.origin = Vector(dCEyeAng.yaw/posdiv, 0, dCEyeAng.pitch/posdiv)
		self.swayviewmodel.angles = Angle(-dCEyeAng.pitch/angdiv, dCEyeAng.yaw/angdiv, 0)
	else
		self.swayviewmodel.origin = Vector(-dCEyeAng.yaw/posdiv, 0, dCEyeAng.pitch/posdiv)
		self.swayviewmodel.angles = Angle(-dCEyeAng.pitch/angdiv, -dCEyeAng.yaw/angdiv, 0)
	end
	
	return self.swayviewmodel
end

//CVFireAnimIroned
SWEP.CVFAIOldLST = 0
SWEP.cvfaiviewmodel = {}
SWEP.cvfaiviewmodel.origin = Vector(0,0,0)
SWEP.cvfaiviewmodel.angles = Angle(0,0,0)
function SWEP:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )

	if(!self.CVFireAnimIroned) then return self.cvfaiviewmodel end

	if ((self.CVFAIOldLST != self:GetLST()) && self:IsAiming()) then
		self.cvfaiviewmodel.origin.y = math.Approach(self.cvfaiviewmodel.origin.y, -5, 3)
		self.CVFAIOldLST = self:GetLST()
	end
	
	self.cvfaiviewmodel.origin.y = SmoothApproach(self.cvfaiviewmodel.origin.y, 0, FrameTime()*10)
	
	return self.cvfaiviewmodel
end


//Replaceable per weapon
SWEP.curviewmodel = {}
SWEP.curviewmodel.origin = Vector(0,0,0)
SWEP.curviewmodel.angles = Angle(0,0,0)
function SWEP:WatViewModelCalcView( ply, origin, angles, fov )
	//different targviewmodels, modules
	local base = self:WatViewModelCalcViewBase( ply, origin, angles, fov )
	local inspect = self:WatViewModelCalcViewInspect( ply, origin, angles, fov )
	local sway = self:WatViewModelCalcViewSway( ply, origin, angles, fov )
	local cvfai = self:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )
	
	local viewmodel = {}
	viewmodel.origin = base.origin + inspect.origin + sway.origin + cvfai.origin
	viewmodel.angles = base.angles + inspect.angles + sway.angles + cvfai.angles
	
	return viewmodel
end




//Universal CurViewModel
SWEP.ucurviewmodel = {}
SWEP.ucurviewmodel.origin = Vector(0,0,0)
SWEP.ucurviewmodel.angles = Angle(0,0,0)
function WatCalcView( ply, origin, angles, fov )
	if(!IsValid(ply)) then return end
	self = ply:GetActiveWeapon()
	if (!self.Wattle) then return end
	if ( ply:IsPlayingTaunt() ) then return end
	if(ply:InVehicle()) then
		if( ply:GetVehicle():GetThirdPersonMode( ) ) then return end
	end
	
	self:WatCalcViewThink( ply, origin, angles, fov )
	
	local view = {}
	
	nView = self:WatCalcView( ply, origin, angles, fov )
	
	view = nView
	
	local targviewmodel = self:WatViewModelCalcView( ply, origin, angles, fov )
	self.ucurviewmodel.origin = SmoothApproachVector(self.ucurviewmodel.origin, targviewmodel.origin, FrameTime()*100)
	self.ucurviewmodel.angles = SmoothApproachAngle(self.ucurviewmodel.angles, targviewmodel.angles, FrameTime()*100)
	
	return view
end
hook.Add("CalcView", "WatCalcView", WatCalcView)

function SWEP:GetViewModelPosition(pos, ang)
	ang:RotateAroundAxis( ang:Right(), 		self.ucurviewmodel.angles.pitch )
	ang:RotateAroundAxis( ang:Up(), 		self.ucurviewmodel.angles.yaw )
	ang:RotateAroundAxis( ang:Forward(), 	self.ucurviewmodel.angles.roll )

	local forward = ang:Forward()
	local right = ang:Right()
	local up = ang:Up()

	//Compensate for viewpunch
	if(!self:IsAiming()) then
		ang = ang - self.Owner:GetViewPunchAngles()*(1-WatRecoilTrack)
	end
	
	//CurViewModel stuff
	pos = pos + (right*self.ucurviewmodel.origin.x) + (forward*self.ucurviewmodel.origin.y) + (up*self.ucurviewmodel.origin.z)
	
	return pos, ang
end