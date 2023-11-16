n=net.wf.scan(true)
flip();flip();flip()
for i=0,#n-1 do
    -- 0 is for open networks
    if n[i].auth==0 then
        console(i..":"..n[i].ssid.." "..n[i].auth.."")
    end
end