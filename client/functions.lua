-- Function: teleportPed
function teleportPed(ped) -- Creates a function called teleportPed and passes the ped variable as an argument

    -- Local Variables
    local coords = vector4(-404.45, 5983.11, 31.68, 150.04) -- Creates a variable called coords for the peds intended spawn location

    -- Native Functions
    SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false) -- Sets the ped's coordinates to the coords variable
    SetEntityHeading(ped, coords.w) -- Sets the ped's heading to the coords variable
    FreezeEntityPosition(ped, true) -- Freezes the ped's position

end

-- Function: pedAnimations
function pedAnimations(ped) -- Creates a function called pedAnimations and passes the ped variable as an argument

    -- Native Functions
    TaskStartScenarioInPlace(ped, Config.Animation, 0, true) -- Starts the animation again

end

-- Function: createCamera
function createCamera(ped) -- Creates a function called createCamera and passes the ped variable as an argument
    
    -- Local Variables
    local pedHeading = (GetEntityHeading(ped) + 180.0) -- Creates a variable called pedHeading and makes it face the opposite direction of the ped
    local camCoords = GetOffsetFromEntityInWorldCoords(ped, 0.0, 2.0, 0.0) -- Creates a variable called camCoords and sets it to the player's coordinates + 2.0 in the Y axis
    local cam = CreateCamWithParams -- Creates a variable called cam and sets it to a camera with the following parameters
        (    
            "DEFAULT_SCRIPTED_CAMERA", -- Camera Type
            camCoords.x, -- Camera X Coordinate
            camCoords.y, -- Camera Y Coordinate
            camCoords.z + 0.4, -- Camera Z Coordinate + 0.4 to raise the camera up a bit
            2.5, -- Camera X Rotation
            0.0, -- Camera Y Rotation
            pedHeading, -- Camera Z Rotation/Heading
            Config.CameraFoV, -- Camera Field of View
            false, -- Camera Active
            0 -- Rotation Order

        )


    -- Native Functions
    ShakeCam(cam, Config.ShakeType, Config.CameraShake) -- Shakes the camera

    -- Functions
    cameraDoF(cam) -- Calls the cameraDoF function and passes the cam variable as an argument

end

-- Function: cameraDoF
function cameraDoF(cam) -- Creates a function called cameraDoF and passes the cam variable as an argument

    -- Native Functions
    SetCamUseShallowDofMode(cam, true) -- Sets the camera to use shallow dof mode
    SetCamNearDof(cam, Config.CameraNearDof) -- Sets the camera's near dof to the value set in the config file
    SetCamFarDof(cam, Config.CameraFarDof) -- Sets the camera's far dof to the value set in the config file
    SetCamDofStrength(cam, Config.CameraDofStrength) -- Sets the camera's dof strength to the value set in the config file
    SetCamActive(cam, true) -- Sets the camera to active
    RenderScriptCams(true, false, 1, true, true) -- Renders the camera
    
    -- Loops
    while DoesCamExist(cam) do -- While the camera exists, do the following:
        SetUseHiDof() -- Sets the camera to use high dof
        Citizen.Wait(0) -- Waits 0 milliseconds before repeating the loop
    end

end