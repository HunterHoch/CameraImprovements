-- Event: CameraImprovements:client:CreateCam
RegisterNetEvent('CameraImprovements:client:CreateCam') -- This registers the event that is called when the player types /testcam in chat
AddEventHandler('CameraImprovements:client:CreateCam', function() -- This is the handler for the event that is called when the player types /testcam in chat

    -- Local Variables
    local ped = PlayerPedId() -- Creates a variable called ped and sets it to the player's ped

    -- Functions
    teleportPed(ped) -- Calls the teleportPed function in the client/functions.lua file and passes the ped variable as an argument
    pedAnimations(ped) -- Calls the pedAnimations function in the client/functions.lua file and passes the ped variable as an argument
    createCamera(ped) -- Calls the createCamera function in the client/functions.lua file and passes the ped variable as an argument

end)

