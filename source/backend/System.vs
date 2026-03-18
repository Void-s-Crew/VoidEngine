# source/backend/System.vs - Core system logic for Void Engine

class System:
    
    # Properties
    var x:Float
    var y:Float
    var width:Int
    var height:Int
    var color:String
    var speed:Float
    var jumpForce:Float
    var onGround:Bool

    # Constructor
    function new():
        x = 100
        y = 500
        width = 50
        height = 50
        color = "#00FFFF"       # cyan placeholder
        speed = 250
        jumpForce = 14
        onGround = true

    # Update method for movement and gravity
    function update():
        # Horizontal movement
        if input.isPressed("ArrowLeft"):
            x -= speed * deltaTime
        if input.isPressed("ArrowRight"):
            x += speed * deltaTime

        # Jump
        if input.isPressed("Space") and onGround:
            y -= jumpForce * 60 * deltaTime
            onGround = false

        # Gravity
        if not onGround:
            y += engine.gravity * 60 * deltaTime

        # Ground collision
        if y > 500:
            y = 500
            onGround = true
