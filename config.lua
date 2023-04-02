-- Configuration File
Config = {} -- Creates a table called Config

-- Command Config
Config.Command = "testcam" -- Creates a variable called Command and sets it to the command that will be used to test the camera

-- Camera Config
Config.CameraFoV = 25.0 -- Creates a variable called CameraFoV and sets it to the field of view of the camera
Config.CameraNearDof = 0.2 -- Creates a variable called CameraNearDof and sets it to the near dof of the camera
Config.CameraFarDof = 5.0 -- Creates a variable called CameraFarDof and sets it to the far dof of the camera
Config.CameraDofStrength = 1.0 -- Creates a variable called CameraDofStrength and sets it to the dof strength of the camera

-- Shake Config
Config.ShakeType = "HAND_SHAKE" -- Creates a variable called ShakeType and sets it to the shake type of the camera
Config.CameraShake = 0.2 -- Creates a variable called CameraShake and sets it to the shake of the camera

-- Animation Config
Config.Animation = "WORLD_HUMAN_SMOKING" -- Creates a variable called Animation and sets it to the desired animation
-- Note: This is a scenario but you can use animations as well but you will need to use the TaskPlayAnim function instead of TaskStartScenarioInPlace
