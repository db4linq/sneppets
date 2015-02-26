t = require("ds18b20")
pin = 4 
t.setup(pin)
addrs = t.addrs()
if (addrs ~= nil) then
     tmr.alarm(1, 1000, 1, function() 
          print("Temperature: "..t.read().."'C")
     end)
end