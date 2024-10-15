function DebugPrint(text, encode, indent)
    if encode then
        print(json.encode(text, { indent = (indent or Config.EncodeIndent) }))
    else
        print(text)
    end
end

exports("DebugPrint", DebugPrint)

function SpawnNPC(model, coords, heading, networked, args)
    RequestModel(model)
    while not HasModelLoaded(model) do Wait(0) end
    local deliveryPed = CreatePed(0, model, coords.x, coords.y, coords.z - 1, heading, networked, false)
    if args.freeze then
        FreezeEntityPosition(deliveryPed, args.freeze)
    end
    if args.invincible then
        SetEntityInvincible(deliveryPed, args.invincible)
    end
    if args.tempevents then
        SetBlockingOfNonTemporaryEvents(deliveryPed, args.tempevents)
    end

    return deliveryPed
end

exports("SpawnNPC", SpawnNPC)

function Trim(text)
    if not text then return nil end
    return (string.gsub(text, '^%s*(.-)%s*$', '%1'))
end

exports("Trim", Trim)
