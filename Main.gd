extends Node3D

func _ready():
    var ground = MeshInstance3D.new()
    var ground_mesh = BoxMesh.new()
    ground_mesh.size = Vector3(100, 1, 100)
    ground.mesh = ground_mesh
    ground.position.y = -1
    add_child(ground)

    var light = DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, -30, 0)
    add_child(light)

    var camera = Camera3D.new()
    camera.position = Vector3(0, 3, 8)
    camera.look_at(Vector3.ZERO)
    add_child(camera)

    var player = MeshInstance3D.new()
    var player_mesh = CapsuleMesh.new()
    player.mesh = player_mesh
    player.position.y = 1
    add_child(player)

    print("HORROR NIGHT 3D")
