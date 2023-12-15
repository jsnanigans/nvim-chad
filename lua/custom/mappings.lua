---@type MappingsTable
local M = {}

M.comment = {
  -- use LSP to comment
};

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
   -- control-p is now telescope find_files 
   ["<C-p>"] = { "<cmd>Telescope find_files<cr>", "find files" },
  
   -- hop easymotion
   [";"] = {
    function()
      require("hop").hint_patterns()
    end,
      "hop pattern",
    },

  [","] = {
    function()
      require("hop").hint_words()
    end,
      "hop line",
    },

    ["#"] = {
      "<cmd>Telescope buffers<cr>",
      "telescope open buffers"
    },

    -- switch to last used buffer (toogle between two)
    ["<C-l>"] = {
      "<cmd>b#<cr>",
      "switch to last used buffer"
    }
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
