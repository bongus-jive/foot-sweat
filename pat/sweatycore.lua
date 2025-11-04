Forever = {}
Repeat = { [Forever] = function(a) if a.wait then a[1](a[2]) end end }
seconds = setmetatable({ n = 0 }, { __bor = function(t, s) t.n = t.n - script.updateDt() if t.n <= 0 then t.n = s / 10 return true end end })
Do = { spawn = function(_, i) return function(p) world.spawnLiquid(p, i, 1) end end }
Liquid = setmetatable({}, { __index = function(_, k) return root.liquidId(k) end })
function Player(f) return f(mcontroller) end
Playelocation = { feet = function(m) return setmetatable({m.xPosition(), m.yPosition() + m.boundBox()[2]}, { __concat = function (_, b) return b end }) end }
local s = [=[/pat/sweatyfeet.lua]=]
function update() require(s) _SBLOADED[s] = nil end
