# source/Main.vs - Main scene acting as engine system

onCreate:
    # Create a test rectangle representing the system (instead of player)
    systemEntity.width = 50
    systemEntity.height = 50
    systemEntity.color = "#00FFFF"     # cyan placeholder
    systemEntity.x = 100
    systemEntity.y = 500
    systemEntity.speed = 250
    systemEntity.jumpForce = 14
    systemEntity.onGround = true

    # Camera setup
    camera.target = systemEntity
    camera.smooth = 0.1
    camera.zoom = 1.0

    # Physics settings
    engine.gravity = 0.8

onUpdate:
    # Horizontal movement
    if input.isPressed("ArrowLeft"):
        systemEntity.x -= systemEntity.speed * deltaTime
    if input.isPressed("ArrowRight"):
        systemEntity.x += systemEntity.speed * deltaTime

    # Jump
    if input.isPressed("Space") and systemEntity.onGround:
        systemEntity.y -= systemEntity.jumpForce * 60 * deltaTime
        systemEntity.onGround = false

    # Gravity
    if not systemEntity.onGround:
        systemEntity.y += engine.gravity * 60 * deltaTime

    # Ground collision
    if systemEntity.y > 500:
        systemEntity.y = 500
        systemEntity.onGround = true

onBeat:
    # Test camera shake every beat
    camera.shake(0.02, 0.1)

onStep:
    # Optional: log current step for debug
    trace("Step event triggered")
