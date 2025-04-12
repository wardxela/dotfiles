hs.hotkey.bind({ "alt" }, "`", function()
    hs.application.launchOrFocus("Finder")
end)

hs.hotkey.bind({ "alt" }, "1", function()
    hs.application.launchOrFocus("Zen Browser")
end)

-- local function getLatestPlaywrightChromiumApp()
--     local basePath = "/Users/wardxela/Library/Caches/ms-playwright/"
--     local handle = io.popen("ls -td " .. basePath .. "chromium-* 2>/dev/null | head -n1")
--     local latestFolder = handle:read("*a"):gsub("\n", "")
--     handle:close()
--     local chromiumAppPath = latestFolder .. "/chrome-mac/Chromium.app"
--     return chromiumAppPath
-- end

hs.hotkey.bind({ "alt" }, "E", function()
    -- local path = getLatestPlaywrightChromiumApp()
    hs.application.launchOrFocus("Chromium")
end)

hs.hotkey.bind({ "alt" }, "2", function()
    hs.application.launchOrFocus("Zed")
end)

hs.hotkey.bind({ "alt" }, "3", function()
    hs.application.launchOrFocus("Ghostty")
end)

hs.hotkey.bind({ "alt" }, "4", function()
    hs.application.launchOrFocus("Anytype")
end)

hs.hotkey.bind({ "alt" }, "5", function()
    hs.application.launchOrFocus("Legcord")
end)
