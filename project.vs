# project.vs - Base project configuration for Void Engine

project:
    name: "Void Engine"
    version: "0.1.0"
    author: "Ander"
    description: "Minimal base project using Void Engine"

# Window settings
window:
    width: 1280
    height: 720
    fullscreen: false
    vsync: true
    title: "Void Engine Demo"

# Engine settings
engine:
    fps: 60
    gravity: 0.8
    debugMode: true
    camera:
        smooth: 0.1
        zoom: 1.0

# Default scene
scenes:
    - "scenes/Main.vs"
    defaultScene: "scenes/Main.vs"

# Assets
assets:
    images:
        player: "assets/images/player.png"
        background: "assets/images/bg.png"
    sounds:
        bgm: "assets/sounds/music.ogg"

# Scripts
scripts:
    global:
        onStart: "scripts/globalStart.vs"
        onUpdate: "scripts/globalUpdate.vs"
