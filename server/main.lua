-- Localize the QBCore object
local QBCore = exports['qb-core']:GetCoreObject() -- Creates a variable called QBCore and sets it to the export for qb-core's Core Object

-- Commands
QBCore.Commands.Add('testcam', 'Test out the camera!', {}, false, function(source, _) -- Creates a command called /testcam that calls the following function when executed
    TriggerClientEvent('CameraImprovements:client:CreateCam', source) -- Triggers the event 'CameraImprovements:client:CreateCam' on the client side
end)