pin=4
gpio.mode(pin, gpio.OUTPUT)
tmr.alarm(0, 1000, 1, function() 
     if (gpio.read(pin) == 1) then
          gpio.write(pin, 0)
     else
          gpio.write(pin, 1)
     end  
end )