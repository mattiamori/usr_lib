function TableContains(tab, val)
    if type(val) == "table" then
        for _, value in pairs(tab) do
            if TableContains(val, value) then
                return true
            end
        end
        return false
    else
        for _, value in pairs(tab) do
            if value == val then
                return true
            end
        end
    end
    return false
end

exports("TableContains", TableContains)

function Trim(text)
    if not text then return nil end
    return (string.gsub(text, '^%s*(.-)%s*$', '%1'))
end

exports("Trim", Trim)

function StartsWith(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

exports("StartsWith", StartsWith)

function DebugPrint(text, encode, indent)
    if encode then
        print(json.encode(text, { indent = (indent or Config.EncodeIndent or false) }))
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
