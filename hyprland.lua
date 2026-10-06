-- Animated gradient window border
-- `borderangle` is rotated by the loop below.
hl.curve("linear_loop", {
  type = "bezier",
  points = { { 0, 0 }, { 1, 1 } },
})

hl.animation({
  leaf = "borderangle",
  enabled = true,
  speed = 20,
  bezier = "linear_loop",
  style = "loop",
})

-- These colors match the VI gradient in colors.toml.
local active_border_color = {
  colors = { "#ff4cd4", "#ffb46c" },
  angle = 0,
}
local inactive_border_color = "rgba(5f3b6aaa)"

hl.config({
  general = {
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Drop shadow
hl.config({
  decoration = {
    shadow = {
      enabled = true,
      range = 5,
      render_power = 1,
      color = "rgba(00000066)",
      scale = 1.0,
      offset = { 6, 6 },
    },
  },
})
