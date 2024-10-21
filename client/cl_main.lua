function SpawnNPC(model, coords, heading, networked, args)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local ped = CreatePed(0, model, coords.x, coords.y, coords.z - 1, heading, networked, false)
    if args.freeze then
        FreezeEntityPosition(ped, args.freeze)
    end
    if args.invincible then
        SetEntityInvincible(ped, args.invincible)
    end
    if args.tempevents then
        SetBlockingOfNonTemporaryEvents(ped, args.tempevents)
    end

    return ped
end

exports("SpawnNPC", SpawnNPC)
