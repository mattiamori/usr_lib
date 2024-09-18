function DebugPrint(text, encode, indent)
    if encode then
        print(json.encode(text, { indent = (indent or Config.DefaultIndent) }))
    else
        print(text)
    end
end

exports("DebugPrint", DebugPrint)
