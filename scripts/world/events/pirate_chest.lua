local PirateChest, super = Class(Event, "pirate_chest")

function PirateChest:init(data)
    super.init(self, data)

    properties = data.properties or {}

    self:setOrigin(0.5, 0.5)
    self:setScale(2)

    self.sprite = Sprite("world/events/pirate_chest")
    self:addChild(self.sprite)

    self:setSize(self.sprite:getSize())
    self:setHitbox(0, 8, 20, 12)

    self.money = properties["money"]
	
	assert(self.money~=nil, "Pirate chests need money.")

    self.set_flag = properties["setflag"]
    self.set_value = properties["setvalue"]

    self.solid = true
end

function PirateChest:getDebugInfo()
    local info = super.getDebugInfo(self)
    table.insert(info, self.money .. " Gold")
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

        local name, success, result_text
        name = self.money.." Gold"
        success = true
        result_text = "* ([color:yellow]"..name.."[color:reset] was added to Marcy's satchel.)"
        Game:addFlag("pirate_gold", self.money)

        if name then
            self.world:showText({
                "* (You opened the pirate\nchest.)[wait:5]\n* (Inside was [color:yellow]"..name.."[color:reset].)",
                result_text
            })
        else
            self.world:showText("* (The chest is empty.)")
            success = true
        end

        if success and self.set_flag then
            Game:setFlag(self.set_flag, (self.set_value == nil and true) or self.set_value)
        end
    end

    return true
end

return PirateChest