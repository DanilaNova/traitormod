local event = {}

event.Name = "BreackHull"
event.MinRoundTime = 15
event.MinIntensity = 0
event.MaxIntensity = 0.05
event.ChancePerMinute = 0.001
event.OnlyOncePerRound = false

event.Start = function ()
    for key, wall in pairs(Structure.WallList) do
        if wall.Submarine == Submarine.MainSub then
            for i = 0, wall.SectionCount, 1 do
                wall.AddDamage(i, 50)
            end
        end
    end

    local text = Traitormod.Language.BreackHull
    Traitormod.RoundEvents.SendEventMessage(text, "GameModeIcon.sandbox")

    event.End()
end


event.End = function ()

end

return event