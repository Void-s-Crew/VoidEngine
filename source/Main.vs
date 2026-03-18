# source/Main.vs - Main scene using System.vs

# Import the system class
import backend.System

onCreate:
    # Create system entity
    systemEntity = System.new()

    # Camera setup
    camera.target = systemEntity
    camera.smooth = 0.1
    camera.zoom = 1.0

    # Physics settings
    engine.gravity = 0.8

onUpdate:
    # Update the system entity
    systemEntity.update()

onBeat:
    # Camera shake every beat
    camera.shake(0.02, 0.1)

onStep:
    # Optional debug log
    trace("Step event triggered")
