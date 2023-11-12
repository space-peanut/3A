<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>
    <p>Hello World</p>
    <?lua 
        device = pwm.attach(2,4,0.2)
        device:start()
        
        nb=nb+1
        print("acces page : "..nb)
        tmr.delayms(2000)
        device:stop()
        device:detach()

    ?>
</body>
</html>