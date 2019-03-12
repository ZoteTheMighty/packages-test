local ReplicatedStorage = game:GetService("ReplicatedStorage")

local TestEZ = require(ReplicatedStorage.Modules.TestEZ)

local PackagesTest = ReplicatedStorage.Modules.PackagesTest

TestEZ.TestBootstrap:run({ PackagesTest }, TestEZ.Reporters.TextReporter)