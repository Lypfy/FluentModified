return {
    Name = "LarpBlack",
    Accent = Color3.fromRGB(250, 250, 250),
    AcrylicMain = Color3.fromRGB(0, 0, 0),
    AcrylicBorder = Color3.fromRGB(28, 28, 32),
    AcrylicGradient = ColorSequence.new(
        Color3.fromRGB(8, 8, 10),
        Color3.fromRGB(0, 0, 0)
    ),
    AcrylicNoise = 1,

    TitleBarLine = Color3.fromRGB(25, 25, 30),
    Tab = Color3.fromRGB(18, 18, 22),

    Element = Color3.fromRGB(12, 12, 14),
    ElementBorder = Color3.fromRGB(22, 22, 26),
    InElementBorder = Color3.fromRGB(34, 34, 40),
    ElementTransparency = 0.82,

    ToggleSlider = Color3.fromRGB(36, 36, 42),
    ToggleToggled = Color3.fromRGB(255, 255, 255),
    SliderRail = Color3.fromRGB(30, 30, 36),

    CheckboxUnchecked = Color3.fromRGB(16, 16, 20),
    CheckboxChecked = Color3.fromRGB(245, 245, 250),
    CheckboxCheck = Color3.fromRGB(0, 0, 0),

    DropdownFrame = Color3.fromRGB(18, 18, 22),
    DropdownHolder = Color3.fromRGB(8, 8, 10),
    DropdownBorder = Color3.fromRGB(32, 32, 38),
    DropdownOption = Color3.fromRGB(22, 22, 26),

    Keybind = Color3.fromRGB(20, 20, 24),
    Input = Color3.fromRGB(14, 14, 18),
    InputFocused = Color3.fromRGB(6, 6, 8),
    InputIndicator = Color3.fromRGB(60, 60, 68),

    Dialog = Color3.fromRGB(10, 10, 12),
    DialogHolder = Color3.fromRGB(6, 6, 8),
    DialogHolderLine = Color3.fromRGB(24, 24, 28),
    DialogButton = Color3.fromRGB(16, 16, 20),
    DialogButtonBorder = Color3.fromRGB(36, 36, 42),
    DialogBorder = Color3.fromRGB(28, 28, 34),

    Text = Color3.fromRGB(250, 250, 250),
    SubText = Color3.fromRGB(140, 140, 148),
    Hover = Color3.fromRGB(30, 30, 38),
    HoverChange = 0.04,

    ShineEnabled = getgenv().ShineEnabled,
    Shine = {
        Speed = 0.4,
        RotationSpeed = 20,
        ColorSequence = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 18)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(120, 120, 130)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 15, 18)),
        }),
    },
    StrokeShine = getgenv().ShineEnabled,
    StrokeDark = Color3.fromRGB(28, 28, 32),

    Background = "rbxassetid://101267249045410",
    BackgroundTransparency = 0.05,
    ThemeAccentColors = { Color3.fromRGB(250, 250, 250), Color3.fromRGB(30, 30, 38) },
}
