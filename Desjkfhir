
local a = game:GetService("Players")
local b = game:GetService("RunService")
local c = game:GetService("UserInputService")
local d = game:GetService("TweenService")
local e = game:GetService("Workspace")
local f = a.LocalPlayer
local g = f.Character or f.CharacterAdded:Wait()
local h = g
local i = g.WaitForChild(h, "Humanoid")
local j = g
local k = g.WaitForChild(j, "HumanoidRootPart")
local l = e.CurrentCamera
local function m(n)
    local o = {}
    for p = 1, n do
        o[p] = string.char(math.random(97, 122))
    end
    return table.concat(o)
end
local q = {
    gui = m(12),
    main = m(10),
    header = m(9),
    logo = m(8),
    title = m(7),
    status = m(9),
    close = m(6),
    content = m(11),
    stats = m(8)
}
local r = game:GetService("CoreGui").RobloxGui
local s = {
    BackgroundPrimary = Color3.fromRGB(10, 10, 10),
    BackgroundSecondary = Color3.fromRGB(20, 20, 20),
    BackgroundTertiary = Color3.fromRGB(30, 30, 30),
    AccentPrimary = Color3.fromRGB(255, 30, 30),
    AccentSecondary = Color3.fromRGB(180, 20, 20),
    TextPrimary = Color3.fromRGB(255, 255, 255),
    TextSecondary = Color3.fromRGB(180, 180, 180),
    Success = Color3.fromRGB(30, 255, 30),
    Warning = Color3.fromRGB(255, 200, 30),
    ToggleKey = Enum.KeyCode.RightControl,
    DesyncEnabled = false,
    ShowServerModel = false,
    NoclipEnabled = false
}
local t = {
    FrozenCFrame = nil,
    FrozenPosition = nil,
    ServerModel = nil,
    IsActive = false,
    Connections = {},
    CameraAnchor = nil,
    RealPlayerCFrame = nil,
    NoclipConnection = nil,
    OriginalHipHeight = nil,
    PhysicsOptimized = false
}
local u = Instance.new("ScreenGui")
u.Name = q.gui
u.ResetOnSpawn = false
u.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
u.Parent = r
local function v(w, x, y, z)
    local A = d:Create(w, TweenInfo.new(y or 0.3, z or Enum.EasingStyle.Quad), x)
    A:Play()
    return A
end
local function B(C, D, E)
    local F = Instance.new("ImageLabel")
    F.Name = m(6)
    F.BackgroundTransparency = 1
    F.Position = UDim2.new(0.5, 0, 0.5, 0)
    F.Size = UDim2.new(1, 40, 1, 40)
    F.AnchorPoint = Vector2.new(0.5, 0.5)
    F.Image = "rbxasset://textures/ui/Glow.png"
    F.ImageColor3 = D
    F.ImageTransparency = E or 0.5
    F.ZIndex = C.ZIndex - 1
    F.Parent = C
end
local function G(H, I, J, K)
    local L = Instance.new("UIGradient")
    L.Name = m(5)
    L.Color = ColorSequence.new(I, J)
    L.Rotation = K or 90
    L.Parent = H
end
local function M(N, O, P, Q)
    local R = Q == "success" and s.Success or (Q == "warning" and s.Warning or s.AccentPrimary)
    local S = Instance.new("Frame")
    S.Name = m(7)
    S.BackgroundColor3 = s.BackgroundPrimary
    S.BorderSizePixel = 0
    S.Position = UDim2.new(1, 20, 0.95, 0)
    S.Size = UDim2.new(0, 300, 0, 80)
    S.AnchorPoint = Vector2.new(0, 1)
    S.ZIndex = 10000
    S.Parent = u
    local T = Instance.new("UICorner")
    T.Name = m(5)
    T.CornerRadius = UDim.new(0, 12)
    T.Parent = S
    local U = Instance.new("UIStroke")
    U.Name = m(6)
    U.Color = R
    U.Thickness = 2
    U.Parent = S
    B(S, R, 0.7)
    local V = Instance.new("TextLabel")
    V.Name = m(8)
    V.BackgroundTransparency = 1
    V.Position = UDim2.new(0, 15, 0, 10)
    V.Size = UDim2.new(1, -30, 0, 22)
    V.Font = Enum.Font.GothamBold
    V.Text = N
    V.TextColor3 = R
    V.TextSize = 14
    V.TextXAlignment = Enum.TextXAlignment.Left
    V.ZIndex = 10001
    V.Parent = S
    local W = Instance.new("TextLabel")
    W.Name = m(9)
    W.BackgroundTransparency = 1
    W.Position = UDim2.new(0, 15, 0, 35)
    W.Size = UDim2.new(1, -30, 0, 35)
    W.Font = Enum.Font.Gotham
    W.Text = O
    W.TextColor3 = s.TextSecondary
    W.TextSize = 11
    W.TextWrapped = true
    W.TextXAlignment = Enum.TextXAlignment.Left
    W.TextYAlignment = Enum.TextYAlignment.Top
    W.ZIndex = 10001
    W.Parent = S
    v(S, {Position = UDim2.new(1, -320, 0.95, 0)}, 0.5, Enum.EasingStyle.Back)
    task.delay(
        P or 3,
        function()
            v(S, {Position = UDim2.new(1, 20, 0.95, 0)}, 0.4)
            task.wait(0.4)
            S:Destroy()
        end
    )
end
local X = {
    CreateCameraAnchor = function(Y)
        local Z = Instance.new("Part")
        Z.Name = m(10)
        Z.Size = Vector3.new(2, 2, 2)
        Z.Transparency = 1
        Z.CanCollide = false
        Z.Anchored = true
        Z.CFrame = k.CFrame
        Z.Parent = e
        t.CameraAnchor = Z
        return Z
    end,
    UpdateCameraAnchor = function(Y)
        t.Connections.AnchorUpdate =
            b.RenderStepped:Connect(
            function()
                if t.CameraAnchor and (k and s.DesyncEnabled) then
                    t.CameraAnchor.CFrame = k.CFrame
                end
            end
        )
    end,
    SetupCamera = function(_)
        _:CreateCameraAnchor()
        _:UpdateCameraAnchor()
        l.CameraSubject = t.CameraAnchor
        t.Connections.CameraControl =
            b.RenderStepped:Connect(
            function()
                if s.DesyncEnabled and t.CameraAnchor then
                    if l.CameraSubject ~= t.CameraAnchor then
                        l.CameraSubject = t.CameraAnchor
                    end
                end
            end
        )
    end,
    RestoreCamera = function(Y)
        if t.CameraAnchor then
            t.CameraAnchor:Destroy()
            t.CameraAnchor = nil
        end
        l.CameraSubject = i
    end,
    CreateServerModel = function(Y)
        if t.ServerModel then
            t.ServerModel:Destroy()
        end
        if s.ShowServerModel then
            local a0 = Instance.new("Model")
            a0.Name = "ServerPosition_" .. m(5)
            local a1 = Instance.new("Part")
            a1.Name = m(8)
            a1.Size = Vector3.new(4, 0.2, 4)
            a1.CFrame = t.FrozenCFrame * CFrame.new(0, -3, 0)
            a1.Anchored = true
            a1.CanCollide = false
            a1.Transparency = 0.3
            a1.Material = Enum.Material.Neon
            a1.Color = s.AccentPrimary
            a1.Parent = a0
            Instance.new("CylinderMesh").Parent = a1
            local a2 = Instance.new("Part")
            a2.Name = m(7)
            a2.Size = Vector3.new(0.3, 50, 0.3)
            a2.CFrame = t.FrozenCFrame * CFrame.new(0, 25, 0)
            a2.Anchored = true
            a2.CanCollide = false
            a2.Transparency = 0.5
            a2.Material = Enum.Material.Neon
            a2.Color = s.AccentPrimary
            a2.Parent = a0
            local a3 = Instance.new("Part")
            a3.Name = m(8)
            a3.Size = k.Size
            a3.CFrame = t.FrozenCFrame
            a3.Anchored = true
            a3.CanCollide = false
            a3.Transparency = 0.7
            a3.Material = Enum.Material.ForceField
            a3.Color = s.AccentPrimary
            a3.CastShadow = false
            a3.Parent = a0
            a0.Parent = workspace
            t.ServerModel = a0
            spawn(
                function()
                    local a4 = 0
                    while t.ServerModel and t.ServerModel.Parent do
                        a4 = a4 + 2
                        if a1 and a1.Parent then
                            a1.CFrame = t.FrozenCFrame * CFrame.new(0, -3, 0) * CFrame.Angles(0, math.rad(a4), 0)
                        end
                        b.Heartbeat:Wait()
                    end
                end
            )
        end
    end,
    UpdateServerModel = function(Y)
        if not (t.ServerModel and s.ShowServerModel) then
        end
    end,
    OptimizePhysics = function(Y)
        if not t.PhysicsOptimized then
            t.OriginalHipHeight = i.HipHeight
            i.HipHeight = i.HipHeight
            t.PhysicsOptimized = true
        end
    end,
    RestorePhysics = function(Y)
        if t.PhysicsOptimized then
            if t.OriginalHipHeight then
                i.HipHeight = t.OriginalHipHeight
            end
            t.PhysicsOptimized = false
        end
    end,
    EnableNoclip = function(Y)
        if not t.NoclipConnection then
            t.NoclipConnection =
                b.Stepped:Connect(
                function()
                    if s.NoclipEnabled then
                        local a5 = g
                        local a6, a7, a8 = pairs(a5:GetDescendants())
                        while true do
                            local a9
                            a8, a9 = a6(a7, a8)
                            if a8 == nil then
                                break
                            end
                            if a9:IsA("BasePart") then
                                a9.CanCollide = false
                            end
                        end
                    end
                end
            )
        end
    end,
    DisableNoclip = function(Y)
        if t.NoclipConnection then
            t.NoclipConnection:Disconnect()
            t.NoclipConnection = nil
        end
        local aa = g
        local ab, ac, ad = pairs(aa:GetDescendants())
        while true do
            local ae
            ad, ae = ab(ac, ad)
            if ad == nil then
                break
            end
            if ae:IsA("BasePart") and ae.Name ~= "HumanoidRootPart" then
                ae.CanCollide = true
            end
        end
    end,
    Start = function(af)
        if not t.IsActive then
            t.IsActive = true
            t.FrozenCFrame = k.CFrame
            t.FrozenPosition = k.Position
            af:SetupCamera()
            af:CreateServerModel()
            af:OptimizePhysics()
            pcall(
                function()
                    k:SetNetworkOwner(nil)
                end
            )
            t.Connections.MainLoop =
                b.Heartbeat:Connect(
                function()
                    if s.DesyncEnabled and k then
                        local ag = k.CFrame
                        local ah = k.AssemblyLinearVelocity
                        t.RealPlayerCFrame = ag
                        k.CFrame = t.FrozenCFrame
                        k.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                        b.RenderStepped:Wait()
                        if k then
                            k.CFrame = ag
                            k.AssemblyLinearVelocity = ah
                        end
                        af:UpdateServerModel()
                    end
                end
            )
            M("DESYNC ACTIVE", "Server frozen! Camera following your real position!", 3, "success")
        end
    end,
    Stop = function(ai)
        if t.IsActive then
            t.IsActive = false
            ai:RestoreCamera()
            ai:RestorePhysics()
            local aj, ak, al = pairs(t.Connections)
            while true do
                local am
                al, am = aj(ak, al)
                if al == nil then
                    break
                end
                am:Disconnect()
            end
            t.Connections = {}
            if s.NoclipEnabled then
                s.NoclipEnabled = false
                ai:DisableNoclip()
            end
            pcall(
                function()
                    k:SetNetworkOwnershipAuto()
                end
            )
            if t.ServerModel then
                t.ServerModel:Destroy()
                t.ServerModel = nil
            end
            t.FrozenCFrame = nil
            t.FrozenPosition = nil
            M("DESYNC DISABLED", "Camera and position restored.", 2, "warning")
        end
    end
}
local an = Instance.new("Frame")
an.Name = q.main
an.BackgroundColor3 = s.BackgroundPrimary
an.BorderSizePixel = 0
an.Position = UDim2.new(0.5, -225, 0.5, -200)
an.Size = UDim2.new(0, 450, 0, 400)
an.ZIndex = 9000
an.Parent = u
local ao = Instance.new("UICorner")
ao.Name = m(6)
ao.CornerRadius = UDim.new(0, 16)
ao.Parent = an
local ap = Instance.new("UIStroke")
ap.Name = m(7)
ap.Color = s.AccentPrimary
ap.Thickness = 2
ap.Transparency = 0.3
ap.Parent = an
B(an, s.AccentPrimary, 0.8)
local aq = nil
local ar = nil
local as = nil
local at = nil
local au = 5
local function av(aw)
    local ax = aw.Position - as
    if aq and au < ax.Magnitude then
        an.Position = UDim2.new(at.X.Scale, at.X.Offset + ax.X, at.Y.Scale, at.Y.Offset + ax.Y)
    end
end
an.InputBegan:Connect(
    function(ay)
        if ay.UserInputType == Enum.UserInputType.MouseButton1 or ay.UserInputType == Enum.UserInputType.Touch then
            aq = true
            as = ay.Position
            at = an.Position
            ay.Changed:Connect(
                function()
                    if ay.UserInputState == Enum.UserInputState.End then
                        aq = false
                    end
                end
            )
        end
    end
)
an.InputChanged:Connect(
    function(az)
        if az.UserInputType == Enum.UserInputType.MouseMovement or az.UserInputType == Enum.UserInputType.Touch then
            ar = az
        end
    end
)
c.InputChanged:Connect(
    function(aA)
        if aA == ar and aq then
            av(aA)
        end
    end
)
local aB = Instance.new("Frame")
aB.Name = q.header
aB.BackgroundColor3 = s.BackgroundSecondary
aB.BorderSizePixel = 0
aB.Size = UDim2.new(1, 0, 0, 60)
aB.ZIndex = 9001
aB.Parent = an
local aC = Instance.new("UICorner")
aC.Name = m(5)
aC.CornerRadius = UDim.new(0, 16)
aC.Parent = aB
G(aB, s.BackgroundSecondary, s.BackgroundTertiary, 90)
local aD = Instance.new("Frame")
aD.Name = q.logo
aD.BackgroundColor3 = s.AccentPrimary
aD.Position = UDim2.new(0, 15, 0.5, -18)
aD.Size = UDim2.new(0, 36, 0, 36)
aD.BorderSizePixel = 0
aD.ZIndex = 9002
aD.Parent = aB
local aE = Instance.new("UICorner")
aE.Name = m(6)
aE.CornerRadius = UDim.new(0, 8)
aE.Parent = aD
B(aD, s.AccentPrimary, 0.6)
local aF = Instance.new("ImageLabel")
aF.Name = m(9)
aF.Image = "rbxassetid://99495807378456"
aF.BackgroundTransparency = 1
aF.Size = UDim2.new(1, 0, 1, 0)
aF.Position = UDim2.new(0, 0, 0, 0)
aF.ScaleType = Enum.ScaleType.Fit
aF.ZIndex = 9003
aF.Parent = aD
local aG = Instance.new("TextLabel")
aG.Name = q.title
aG.BackgroundTransparency = 1
aG.Position = UDim2.new(0, 58, 0, 10)
aG.Size = UDim2.new(0, 200, 0, 24)
aG.Font = Enum.Font.GothamBold
aG.Text = "DESYNC"
aG.TextColor3 = s.AccentPrimary
aG.TextSize = 18
aG.TextXAlignment = Enum.TextXAlignment.Left
aG.ZIndex = 9002
aG.Parent = aB
local aH = Instance.new("TextLabel")
aH.Name = m(8)
aH.BackgroundTransparency = 1
aH.Position = UDim2.new(0, 58, 0, 36)
aH.Size = UDim2.new(0, 200, 0, 16)
aH.Font = Enum.Font.Gotham
aH.Text = "Universal Desync No AntiCheat Bypass"
aH.TextColor3 = s.TextSecondary
aH.TextSize = 10
aH.TextXAlignment = Enum.TextXAlignment.Left
aH.ZIndex = 9002
aH.Parent = aB
local aI = Instance.new("Frame")
aI.Name = q.status
aI.BackgroundColor3 = s.BackgroundTertiary
aI.BorderSizePixel = 0
aI.Position = UDim2.new(1, -155, 0.5, -16)
aI.Size = UDim2.new(0, 95, 0, 32)
aI.ZIndex = 9002
aI.Parent = aB
Instance.new("UICorner", aI).CornerRadius = UDim.new(0, 10)
local aJ = Instance.new("UIStroke")
aJ.Name = m(7)
aJ.Color = s.AccentSecondary
aJ.Thickness = 1.5
aJ.Transparency = 0.5
aJ.Parent = aI
local aK = Instance.new("Frame")
aK.Name = m(6)
aK.BackgroundColor3 = s.AccentSecondary
aK.BorderSizePixel = 0
aK.Position = UDim2.new(0, 10, 0.5, -5)
aK.Size = UDim2.new(0, 10, 0, 10)
aK.ZIndex = 9003
aK.Parent = aI
Instance.new("UICorner", aK).CornerRadius = UDim.new(1, 0)
local aL = Instance.new("TextLabel")
aL.Name = m(9)
aL.BackgroundTransparency = 1
aL.Position = UDim2.new(0, 24, 0, 0)
aL.Size = UDim2.new(1, -28, 1, 0)
aL.Font = Enum.Font.GothamBold
aL.Text = "SYNCED"
aL.TextColor3 = s.TextPrimary
aL.TextSize = 11
aL.TextXAlignment = Enum.TextXAlignment.Left
aL.ZIndex = 9003
aL.Parent = aI
local aM = Instance.new("TextButton")
aM.Name = q.close
aM.BackgroundColor3 = s.BackgroundTertiary
aM.BorderSizePixel = 0
aM.Position = UDim2.new(1, -45, 0.5, -16)
aM.Size = UDim2.new(0, 32, 0, 32)
aM.Font = Enum.Font.GothamBold
aM.Text = "X"
aM.TextColor3 = s.TextPrimary
aM.TextSize = 16
aM.ZIndex = 9003
aM.AutoButtonColor = false
aM.Parent = aB
Instance.new("UICorner", aM).CornerRadius = UDim.new(0, 10)
aM.MouseEnter:Connect(
    function()
        v(aM, {BackgroundColor3 = s.AccentPrimary}, 0.2)
    end
)
aM.MouseLeave:Connect(
    function()
        v(aM, {BackgroundColor3 = s.BackgroundTertiary}, 0.2)
    end
)
aM.MouseButton1Click:Connect(
    function()
        an.Visible = false
    end
)
local aN = Instance.new("Frame")
aN.Name = q.content
aN.BackgroundTransparency = 1
aN.Position = UDim2.new(0, 15, 0, 75)
aN.Size = UDim2.new(1, -30, 1, -90)
aN.ZIndex = 9001
aN.Parent = an
local function aO(aP, aQ, aR, aS, aT)
    local aU = Instance.new("Frame")
    aU.Name = m(10)
    aU.BackgroundColor3 = s.BackgroundSecondary
    aU.BorderSizePixel = 0
    aU.Position = UDim2.new(0, 0, 0, aS)
    aU.Size = UDim2.new(1, 0, 0, 55)
    aU.ZIndex = 9002
    aU.Parent = aP
    Instance.new("UICorner", aU).CornerRadius = UDim.new(0, 12)
    local aV = Instance.new("UIStroke")
    aV.Name = m(6)
    aV.Color = s.AccentPrimary
    aV.Thickness = 1
    aV.Transparency = 0.8
    aV.Parent = aU
    local aW = Instance.new("TextLabel")
    aW.Name = m(7)
    aW.BackgroundTransparency = 1
    aW.Position = UDim2.new(0, 14, 0, 8)
    aW.Size = UDim2.new(1, -100, 0, 18)
    aW.Font = Enum.Font.GothamBold
    aW.Text = aQ
    aW.TextColor3 = s.TextPrimary
    aW.TextSize = 13
    aW.TextXAlignment = Enum.TextXAlignment.Left
    aW.ZIndex = 9003
    aW.Parent = aU
    local aX = Instance.new("TextLabel")
    aX.Name = m(8)
    aX.BackgroundTransparency = 1
    aX.Position = UDim2.new(0, 14, 0, 28)
    aX.Size = UDim2.new(1, -100, 0, 20)
    aX.Font = Enum.Font.Gotham
    aX.Text = aR
    aX.TextColor3 = s.TextSecondary
    aX.TextSize = 9
    aX.TextXAlignment = Enum.TextXAlignment.Left
    aX.TextWrapped = true
    aX.ZIndex = 9003
    aX.Parent = aU
    local aY = Instance.new("Frame")
    aY.Name = m(9)
    aY.BackgroundColor3 = s.BackgroundTertiary
    aY.BorderSizePixel = 0
    aY.Position = UDim2.new(1, -62, 0.5, -14)
    aY.Size = UDim2.new(0, 52, 0, 28)
    aY.ZIndex = 9003
    aY.Parent = aU
    Instance.new("UICorner", aY).CornerRadius = UDim.new(1, 0)
    local aZ = Instance.new("Frame")
    aZ.Name = m(8)
    aZ.BackgroundColor3 = s.TextPrimary
    aZ.BorderSizePixel = 0
    aZ.Position = UDim2.new(0, 3, 0.5, -11)
    aZ.Size = UDim2.new(0, 22, 0, 22)
    aZ.ZIndex = 9004
    aZ.Parent = aY
    Instance.new("UICorner", aZ).CornerRadius = UDim.new(1, 0)
    B(aZ, s.TextPrimary, 0.7)
    local a_ = false
    local b0 = Instance.new("TextButton")
    b0.Name = m(6)
    b0.BackgroundTransparency = 1
    b0.Size = UDim2.new(1, 0, 1, 0)
    b0.Text = ""
    b0.ZIndex = 9005
    b0.Parent = aU
    b0.MouseButton1Click:Connect(
        function()
            a_ = not a_
            aT(a_)
            if a_ then
                v(aZ, {Position = UDim2.new(1, -25, 0.5, -11)}, 0.3, Enum.EasingStyle.Back)
                v(aY, {BackgroundColor3 = s.AccentPrimary}, 0.3)
                v(aV, {Transparency = 0.3}, 0.3)
            else
                v(aZ, {Position = UDim2.new(0, 3, 0.5, -11)}, 0.3, Enum.EasingStyle.Back)
                v(aY, {BackgroundColor3 = s.BackgroundTertiary}, 0.3)
                v(aV, {Transparency = 0.8}, 0.3)
            end
        end
    )
    b0.MouseEnter:Connect(
        function()
            v(aU, {BackgroundColor3 = s.BackgroundTertiary}, 0.2)
        end
    )
    b0.MouseLeave:Connect(
        function()
            v(aU, {BackgroundColor3 = s.BackgroundSecondary}, 0.2)
        end
    )
end
local b1 = Instance.new("TextLabel")
b1.Name = m(10)
b1.BackgroundTransparency = 1
b1.Size = UDim2.new(1, 0, 0, 25)
b1.Font = Enum.Font.GothamBold
b1.Text = "DESYNC CONTROLS"
b1.TextColor3 = s.AccentPrimary
b1.TextSize = 14
b1.TextXAlignment = Enum.TextXAlignment.Left
b1.ZIndex = 9002
b1.Parent = aN
local b2 = Instance.new("Frame")
b2.Name = m(7)
b2.BackgroundColor3 = s.AccentPrimary
b2.BorderSizePixel = 0
b2.Position = UDim2.new(0, 0, 1, -2)
b2.Size = UDim2.new(0.3, 0, 0, 2)
b2.ZIndex = 9002
b2.Parent = b1
aO(
    aN,
    "Enable Desync",
    "Freezes character position on server, allows client control",
    30,
    function(b3)
        s.DesyncEnabled = b3
        if b3 then
            X:Start()
            aK.BackgroundColor3 = s.Success
            aL.Text = "DESYNCED"
            v(aJ, {Color = s.Success, Transparency = 0.2}, 0.3)
        else
            X:Stop()
            aK.BackgroundColor3 = s.AccentSecondary
            aL.Text = "SYNCED"
            v(aJ, {Color = s.AccentSecondary, Transparency = 0.5}, 0.3)
        end
    end
)
aO(
    aN,
    "Show Server Position",
    "Visualize where players see your character",
    90,
    function(b4)
        s.ShowServerModel = b4
        if b4 and s.DesyncEnabled then
            X:CreateServerModel()
        elseif not b4 and t.ServerModel then
            t.ServerModel:Destroy()
            t.ServerModel = nil
        end
    end
)
aO(
    aN,
    "Noclip",
    "Walk through walls while desync is active",
    150,
    function(b5)
        s.NoclipEnabled = b5
        if b5 then
            X:EnableNoclip()
            M("NOCLIP ENABLED", "You can now walk through walls!", 2, "success")
        else
            X:DisableNoclip()
            M("NOCLIP DISABLED", "Collision restored.", 2, "warning")
        end
    end
)
local b6 = Instance.new("Frame")
b6.Name = q.stats
b6.BackgroundColor3 = s.BackgroundSecondary
b6.BorderSizePixel = 0
b6.Position = UDim2.new(0, 0, 0, 215)
b6.Size = UDim2.new(1, 0, 0, 95)
b6.ZIndex = 9002
b6.Parent = aN
Instance.new("UICorner", b6).CornerRadius = UDim.new(0, 12)
local b7 = Instance.new("UIStroke")
b7.Name = m(7)
b7.Color = s.AccentPrimary
b7.Thickness = 1
b7.Transparency = 0.8
b7.Parent = b6
G(b6, s.BackgroundSecondary, s.BackgroundTertiary, 135)
local b8 = Instance.new("TextLabel")
b8.Name = m(9)
b8.BackgroundTransparency = 1
b8.Position = UDim2.new(0, 14, 0, 8)
b8.Size = UDim2.new(1, -28, 0, 18)
b8.Font = Enum.Font.GothamBold
b8.Text = "position monitoring for goobers"
b8.TextColor3 = s.AccentPrimary
b8.TextSize = 12
b8.TextXAlignment = Enum.TextXAlignment.Left
b8.ZIndex = 9003
b8.Parent = b6
local b9 = Instance.new("TextLabel")
b9.Name = m(10)
b9.BackgroundTransparency = 1
b9.Position = UDim2.new(0, 14, 0, 30)
b9.Size = UDim2.new(1, -28, 1, -38)
b9.Font = Enum.Font.Code
b9.Text = "Enable desync to monitor...\n\nClient: N/A | Server: N/A\nDistance: N/A"
b9.TextColor3 = s.TextSecondary
b9.TextSize = 10
b9.TextWrapped = true
b9.TextXAlignment = Enum.TextXAlignment.Left
b9.TextYAlignment = Enum.TextYAlignment.Top
b9.ZIndex = 9003
b9.Parent = b6
b.RenderStepped:Connect(
    function()
        if s.DesyncEnabled and (k and t.FrozenPosition) then
            local ba = k.Position
            local bb = t.FrozenPosition
            local bc = (ba - bb).Magnitude
            b9.Text =
                string.format(
                "Active - Monitoring positions\n\nClient: [%.0f,%.0f,%.0f]\nServer: [%.0f,%.0f,%.0f]\nDistance: %.1f studs",
                ba.X,
                ba.Y,
                ba.Z,
                bb.X,
                bb.Y,
                bb.Z,
                bc
            )
        else
            b9.Text = "Enable desync to monitor...\n\nClient: N/A | Server: N/A\nDistance: N/A"
        end
    end
)
c.InputBegan:Connect(
    function(bd, be)
        if not be then
            if bd.KeyCode == s.ToggleKey then
                an.Visible = not an.Visible
                if an.Visible then
                    v(an, {Size = UDim2.new(0, 450, 0, 400)}, 0.4, Enum.EasingStyle.Back)
                end
            end
        end
    end
)
f.CharacterAdded:Connect(
    function(bf)
        task.wait(1)
        g = bf
        i = bf:WaitForChild("Humanoid")
        k = bf:WaitForChild("HumanoidRootPart")
        l = e.CurrentCamera
        if s.DesyncEnabled then
            s.DesyncEnabled = false
            X:Stop()
            aK.BackgroundColor3 = s.AccentSecondary
            aL.Text = "SYNCED"
            M("DESYNC RESET", "Character respawned.", 2, "warning")
        end
    end
)
an.Size = UDim2.new(0, 0, 0, 0)
an.Position = UDim2.new(0.5, 0, 0.5, 0)
task.wait(0.1)
v(an, {Size = UDim2.new(0, 450, 0, 400), Position = UDim2.new(0.5, -225, 0.5, -200)}, 0.6, Enum.EasingStyle.Back)
M("DESYNC", "Loaded! Press " .. s.ToggleKey.Name .. " to toggle", 4, "success")
