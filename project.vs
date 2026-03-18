# project.vs - Minimal Void Engine project using only source/Main.vs

project:
    name: "Void Engine Demo"
    version: "0.1.0"
    author: "Ander"
    description: "Minimal Void Engine project using only source/Main.vs"

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
    - "source/Main.vs"
    defaultScene: "source/Main.vs"
