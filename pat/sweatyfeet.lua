--spawn water at the player's feet every second
local Liquid,Forever,t={water=1},"f",0
local function seconds(s)t=t-Dt;if t<=0 then t=s/10;return true end end
local Do={spawn=function(_,l) return l end}
local function Player(f) return f end
local Playelocation={feet=function()local p=mcontroller.position();return{p[1],p[2]+mcontroller.boundBox()[2]}end}
local Repeat={f=function(a)if a.wait then world.spawnLiquid(a.on(),a[1],1)end end}
function update(dt)Dt=dt


--or, in coding terms
 Repeat[Forever] {
wait=seconds(10),
Do:spawn(Liquid.water), on=Player(Playelocation.feet) };


end