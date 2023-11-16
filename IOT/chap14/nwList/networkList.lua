<html>
    <body>
        <?lua 
        for i=0,#n-1 do
            print(i..":"..n[i].ssid.." "..n[i].auth.."/n")
        end
        ?>
    </body>
</html>

