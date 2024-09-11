function DebugPrint(text, encode, indent)
    if encode then
        print(json.encode(text, { indent = indent }))
    else
        print(text)
    end
end
