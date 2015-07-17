
/*Maths-------------------------------------------*/
function VMInvVec(vec)
	return Vector(-vec.x, vec.y, vec.z)
end

function VMInvAng(ang)
	return Angle(ang.pitch, -ang.yaw, -ang.roll)
end

function VecAbsDiff( v1, v2 )
	return Vector(math.abs(v1.x - v2.x), math.abs(v1.y - v2.y), math.abs(v1.z - v2.z))
end

function Bezier( p1, p2, p3, t )
	return ((1-t)^2)*p1 + (2*(1-t)*t)*p2 + (t^2)*p3
end

function ApproachVector( v1, v2, amount )
	local rv = Vector(0,0,0)
	rv.x = math.Approach(v1.x, v2.x, amount)
	rv.y = math.Approach(v1.y, v2.y, amount)
	rv,z = math.Approach(v1.z, v2.z, amount)
	return rv
end

function ApproachAngle( a1, a2, amount )
	local ra = Angle(0,0,0)
	ra.pitch = math.ApproachAngle(a1.pitch, a2.pitch, amount)
	ra.yaw = math.ApproachAngle(a1.yaw, a2.yaw, amount)
	ra.roll = math.ApproachAngle(a1.roll, a2.roll, amount)
	return ra
end

function SmoothApproachVector( v1, v2, smoother )
	local rv = Vector(0,0,0)
	rv.x = math.Approach(v1.x, v2.x, (v1.x - v2.x)*smoother)
	rv.y = math.Approach(v1.y, v2.y, (v1.y - v2.y)*smoother)
	rv.z = math.Approach(v1.z, v2.z, (v1.z - v2.z)*smoother)
	return rv
end

function SmoothApproachAngle( a1, a2, smoother )
	local ra = Angle(0,0,0)
	ra.pitch = math.ApproachAngle(a1.pitch, a2.pitch, math.AngleDifference((math.NormalizeAngle(a1.pitch)) , a2.pitch)*smoother)
	ra.yaw = math.ApproachAngle(a1.yaw, a2.yaw, math.AngleDifference((math.NormalizeAngle(a1.yaw)) , a2.yaw)*smoother)
	ra.roll = math.ApproachAngle(a1.roll, a2.roll, math.AngleDifference((math.NormalizeAngle(a1.roll)) , a2.roll)*smoother)
	ra:Normalize()
	return ra
end

function SmoothApproach( n1, n2, smoother )
	return math.Approach(n1, n2, (n1 - n2)*smoother)
end




/*SWEP stuff-----------------------------------*/
function SWEP:IsSprinting()
	local ply = self.Owner
	
	if(!ply:IsPlayer()) then 
		return false
	end
	
	local xyvel = ply:GetVelocity()
	xyvel.z = 0
	if(ply:KeyDown(IN_SPEED)  && (xyvel:Length() > ply:GetWalkSpeed()*1.2)) then
		return true
	else
		return false
	end
	
	return false
end

function SWEP:IsAiming()
	local ply = self.Owner
	if(!IsValid(ply)) then return end
	return ply:KeyDown(IN_ATTACK2) && self.UseIrons && !ply:KeyDown(IN_USE) && !self:IsSprinting()// && (CurTime() > self:GetFRT())
end

function SWEP:IsCrouching()
	local ply = self.Owner
	return ply:KeyDown(IN_DUCK) && !self:IsSprinting() && ply:OnGround()
end

function SWEP:SearchForMuzzleAttachment()
	local attach
	
	if( self:LookupAttachment("muzzle") && self:LookupAttachment("muzzle") > 0 ) then
		attach = self:LookupAttachment( "muzzle" )
	elseif( self:LookupAttachment("muzzleflash") && self:LookupAttachment("muzzleflash") > 0 ) then
		attach = self:LookupAttachment( "muzzleflash" )
	elseif( self:LookupAttachment("muzzle_flash") && self:LookupAttachment("muzzle_flash") > 0 ) then
		attach = self:LookupAttachment( "muzzle_flash" )
	elseif( self.MuzzleAttachID && self.MuzzleAttachID > -1 ) then
		attach = self.MuzzleAttachID
	else
		attach = 1
	end
	
	return attach
end

/*Draw stuff-------------------------*/
function ADrawLine(x1, y1, x2, y2, thickness, alphafade, r, g, b)
	if(thickness > 0) then
		local ang = math.atan2(x2-x1, y2-y1)
		for i = -thickness, thickness do
			surface.SetDrawColor( r or 0, g or 0, b or 0, 255-(math.abs(i)*(alphafade or 0)) )
			surface.DrawLine( x1+math.cos(ang)*i, y1+math.sin(ang)*i, x2+math.cos(ang)*i, y2+math.sin(ang)*i )
		end
	else
		surface.DrawLine( x1, y1, x2, y2 )
	end
	//surface.SetAlphaMultiplier(1)
end
