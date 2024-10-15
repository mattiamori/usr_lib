function DebugPrint(text, encode, indent)
    if encode then
        print(json.encode(text, { indent = (indent or Config.DefaultIndent) }))
    else
        print(text)
    end
end

exports("DebugPrint", DebugPrint)

function Trim(text)
    if not text then return nil end
    return (string.gsub(text, '^%s*(.-)%s*$', '%1'))
end

exports("Trim", Trim)
