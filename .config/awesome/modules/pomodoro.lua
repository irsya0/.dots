local gears = require("gears")

local Pomodoro = {}
Pomodoro.__index = Pomodoro

function Pomodoro:new(session_duration, break_duration, long_break_duration, cycles)
    local obj = setmetatable({}, Pomodoro)
    obj.session_duration = session_duration and (session_duration * 60) or (25 * 60)
    obj.break_duration = break_duration and (break_duration * 60) or (5 * 60)
    obj.long_break_duration = long_break_duration and (long_break_duration * 60) or (15 * 60)
    obj.cycles = cycles or 4
    obj.local_cycles = 1
    obj.working_mode = true
    obj.remaining_time = obj.session_duration
    obj.running = false
    obj.tick_timer = nil
    return obj
end

function Pomodoro:_switch_mode(on_start)
    if self.working_mode then
        self.remaining_time = self.local_cycles % 4 == 0 and self.long_break_duration or self.break_duration
    else
        self.remaining_time = self.session_duration
        self.local_cycles = self.local_cycles + 1
    end

    self.working_mode = not self.working_mode;

    if on_start then
        on_start(self.remaining_time, self.working_mode)
    end
end

function Pomodoro:start(on_start, on_tick)
    if self.running then return end

    self.tick_timer = gears.timer({
        timeout = 1,
        autostart = true,
        call_now = false,
        callback = function()
            self.remaining_time = self.remaining_time - 1
            if self.remaining_time < 0 then
                self:_switch_mode(on_start)
            end
            if on_tick then
                on_tick(self.remaining_time, self.working_mode)
            end
        end
    })

    self.running = true
    if on_start then
        on_start(self.remaining_time, self.working_mode)
    end
end

function Pomodoro:pause(on_pause)
    if not self.running then return end

    if self.tick_timer then
        self.tick_timer:stop()
        self.tick_timer = nil
    end

    self.running = false
    if on_pause then
        on_pause(self.remaining_time)
    end
end

function Pomodoro:stop(on_stop)
    self:pause()

    self.working_mode = true
    self.local_cycles = 1
    self.remaining_time = self.session_duration
    if on_stop then
        on_stop(self.remaining_time, self.working_mode)
    end
end

return Pomodoro
