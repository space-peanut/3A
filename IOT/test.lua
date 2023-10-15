function tprint(t)    
    for key,value in pairs(t) do
        print(key, value)
    end
end
tableau = { "une valeur", 20, false }
tprint(tableau)