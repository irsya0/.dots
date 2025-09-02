local bling = require("modules.bling")

return {
    init_term = function(s)
        s.term_scratch = bling.module.scratchpad {
            command                 = "kitty --class spad",                                                       -- How to spawn the scratchpad
            rule                    = { instance = "spad" },                                                      -- The rule that the scratchpad will be searched by
            sticky                  = true,                                                                       -- Whether the scratchpad should be sticky
            autoclose               = true,                                                                       -- Whether it should hide itself when losing focus
            floating                = true,                                                                       -- Whether it should be floating (MUST BE TRUE FOR ANIMATIONS)
            geometry                = { x = 0, y = 0, height = s.geometry.height / 3, width = s.geometry.width }, -- The geometry in a floating state
            reapply                 = true,                                                                       -- Whether all those properties should be reapplied on every new opening of the scratchpad (MUST BE TRUE FOR ANIMATIONS)
            dont_focus_before_close = false,                                                                      -- When set to true, the scratchpad will be closed by the toggle function regardless of whether its focused or not. When set to false, the toggle function will first bring the scratchpad into focus and only close it on a second call
        }
    end,
    toggle_term = function(s)
        s.term_scratch:toggle()
    end
}
