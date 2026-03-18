# source/Main.vs - Minimal main scene for Void Engine

onCreate:
    # Create player
    player.image = "assets/images/player.png"
    player.x = 100
    player.y = 500
    player.speed = 250
    player.jumpForce = 14
    player.onGround = true

    # Camera setup
    camera.target = player
    camera.smooth = 0.1
    camera.zoom = 1.0

onUpdate:
    # Player horizontal movement
    if input.isPressed("ArrowLeft"):
        player.x -= player.speed * deltaTime
    if input.isPressed("ArrowRight"):
        player.x += player.speed * deltaTime

    # Player jump
    if input.isPressed("Space") and player.onGround:
        player.y -= player.jumpForce * 60 * deltaTime
        player.onGround = false

    # Simple gravity
    if not player.onGround:
        player.y += engine.gravity * 60 * deltaTime

    # Keep player on ground
    if player.y > 500:
        player.y = 500
        player.onGround = true
