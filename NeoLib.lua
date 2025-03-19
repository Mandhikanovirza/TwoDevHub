local NeoLib = {}

function NeoLib:MakeWindow(options)
    local window = {}
    window.name = options.Name or "Neo Window"
    window.hidePremium = options.HidePremium or false
    window.saveConfig = options.SaveConfig or false
    window.configFolder = options.ConfigFolder or "NeoConfig"

    window.tabs = {}

    function window:MakeTab(tabOptions)
        local tab = {}
        tab.name = tabOptions.Name or "Tab"
        tab.icon = tabOptions.Icon or ""
        tab.premiumOnly = tabOptions.PremiumOnly or false
        tab.elements = {}

        function tab:AddButton(buttonOptions)
            local button = {}
            button.name = buttonOptions.Name or "Button"
            button.callback = buttonOptions.Callback or function() end
            table.insert(tab.elements, button)
        end

        function tab:AddLabel(labelText)
            local label = {}
            label.text = labelText or "Label"
            table.insert(tab.elements, label)
        end

        function tab:AddSlider(sliderOptions)
            local slider = {}
            slider.name = sliderOptions.Name or "Slider"
            slider.min = sliderOptions.Min or 0
            slider.max = sliderOptions.Max or 100
            slider.default = sliderOptions.Default or 50
            slider.color = sliderOptions.Color or Color3.fromRGB(255, 255, 255)
            slider.increment = sliderOptions.Increment or 1
            slider.valueName = sliderOptions.ValueName or "Value"
            slider.callback = sliderOptions.Callback or function() end
            table.insert(tab.elements, slider)
        end

        function tab:AddToggle(toggleOptions)
            local toggle = {}
            toggle.name = toggleOptions.Name or "Toggle"
            toggle.default = toggleOptions.Default or false
            toggle.callback = toggleOptions.Callback or function() end
            table.insert(tab.elements, toggle)
        end

        function tab:AddDropdown(dropdownOptions)
            local dropdown = {}
            dropdown.name = dropdownOptions.Name or "Dropdown"
            dropdown.default = dropdownOptions.Default or ""
            dropdown.options = dropdownOptions.Options or {}
            dropdown.callback = dropdownOptions.Callback or function() end
            table.insert(tab.elements, dropdown)
        end

        function tab:AddColorPicker(colorPickerOptions)
            local colorPicker = {}
            colorPicker.name = colorPickerOptions.Name or "Color Picker"
            colorPicker.default = colorPickerOptions.Default or Color3.fromRGB(255, 255, 255)
            colorPicker.callback = colorPickerOptions.Callback or function() end
            table.insert(tab.elements, colorPicker)
        end

        function tab:AddTextbox(textboxOptions)
            local textbox = {}
            textbox.name = textboxOptions.Name or "Textbox"
            textbox.default = textboxOptions.Default or ""
            textbox.callback = textboxOptions.Callback or function() end
            table.insert(tab.elements, textbox)
        end

        function tab:AddKeybind(keybindOptions)
            local keybind = {}
            keybind.name = keybindOptions.Name or "Keybind"
            keybind.default = keybindOptions.Default or Enum.KeyCode.None
            keybind.callback = keybindOptions.Callback or function() end
            table.insert(tab.elements, keybind)
        end

        table.insert(window.tabs, tab)
        return tab
    end

    return window
end

function NeoLib:MakeNotification(notificationOptions)
    local notification = {}
    notification.name = notificationOptions.Name or "Notification"
    notification.content = notificationOptions.Content or ""
    notification.image = notificationOptions.Image or ""
    notification.time = notificationOptions.Time or 5

    -- Display the notification (This is a placeholder, as the actual implementation depends on your UI system)
    print(notification.name .. ": " .. notification.content)
end

function NeoLib:Init()
    -- Initialize the library (This is a placeholder, as the actual implementation depends on your UI system)
    print("NeoLib Initialized")
end

return NeoLib
