local PirateChest, super = Class(Event, "skull_chest")

function PirateChest:init(data)
    super.init(self, data.x, data.y)

    properties = data.properties or {}

    self:setOrigin(0.5, 0.5)
    self:setScale(2)

    self.sprite = Sprite("world/events/skull_chest")
    self:addChild(self.sprite)

    self:setSize(self.sprite:getSize())
    self:setHitbox(0, 8, 20, 12)

    self.set_flag = properties["setflag"]
    self.set_value = properties["setvalue"]

    self.solid = true
end

function PirateChest:getDebugInfo()
    local info = super.getDebugInfo(self)
    table.insert(info, "Opened: " .. (self:getFlag("opened") and "True" or "False"))
    return info
end

function PirateChest:onAdd(parent)
    super.onAdd(self, parent)

    if self:getFlag("opened") then
        self.sprite:setFrame(2)
    end
end

function PirateChest:onInteract(player, dir)
    if self:getFlag("opened") then
        self.world:showText("* (The chest is empty.)")
    else
        Assets.playSound("locker")
        self.sprite:setFrame(2)
        self:setFlag("opened", true)

        Game:setFlag("marcyquest_skull_key", true)
		
		Game.world:startCutscene(function(cutscene)
			cutscene:text("* (You open up the chest and find a [color:yellow]Skull Key[color:white].)")
			cutscene:text("* Marcy takes and pockets the key.")
			cutscene:text("* You sure you can keep that in your pocket, Marcy?", "neutral", "jamm")
			cutscene:text("* Marcy can handle it,[wait:5] papa!", "smile", "marcy")
		end)
    end

    return true
end

return PirateChest