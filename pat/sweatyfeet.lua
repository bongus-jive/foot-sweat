--spawn water at the player's feet every second
local seconds,Liquid,Forever,t={[10]=1},{water=1},"f",0
local function wait(s)t=t-Dt;if t<=0 then t=s;return true end end
local function spawn(l)return l end;local Player=spawn
local Playelocation={feet=function()local p=mcontroller.position();return{p[1],p[2]+mcontroller.boundBox()[2]}end}
local Repeat={f=function(a)if wait(a.wait)then world.spawnLiquid(a.on(),a.Do,1)end end}
function update(dt)Dt=dt


--or, in coding terms
 Repeat[Forever] {
wait = seconds[10],
Do = spawn(Liquid.water), on = Player(Playelocation.feet) };


end