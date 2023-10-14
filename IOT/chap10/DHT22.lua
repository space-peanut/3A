device= pwm.attach(2,10,0.5)
function avg(list)
  sum=0
  for i=1,#list do
    sum=sum+list[i]
  end
  return sum/#list
end

function max(list)
  local max=list[1]
  for i=1,#list do
    if list[i]>max then
      max=list[i]
    end
  end
  return max
end

function min(list)
  local min=list[1]
  for i=1,#list do
    if list[i]<min then
      min=list[i]
    end
  end
  return min
end

t=thread.start(function ()
  s=sensor.attach("DHT22",pio.GPIO15)
  tmr.delayms(90)
  
  temps={}
  Humids={}
  count=0
  sampleRate=5 --smpl/s
  average=0
  while true do
    average=avg(Humids)
    t=s:read("temperature")
    h=s:read("humidity")
    temps[count%(60*sampleRate)]=t
    Humids[count%(60*sampleRate)]=h
    if count%(10*sampleRate)==0 and count>=1 then
      print("average temp : "..avg(temps).."° average hum : "..avg(Humids).."%")
      print("max temp : "..max(temps).."° max hum : "..max(Humids).."%")
      print("min temp : "..min(temps).."° min hum : "..min(Humids).."%")
    end
    if h>average then
      device:start()
    else
      device:stop()
    end
    print(h)
    count=count+1
    tmr.delayms(1000/sampleRate)
  end
end
)