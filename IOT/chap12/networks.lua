w=net.wf.scan(true)
flip();flip();flip()
for i=0,#w-1 do
    -- 0 is for open networks
    if w[i].auth==0 then
        console(i..":"..w[i].ssid.." "..w[i].auth.."")
    end
end