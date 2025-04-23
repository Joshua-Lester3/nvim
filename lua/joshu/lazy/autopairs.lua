return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",  -- Loads the plugin when entering Insert mode (helps startup time)
    config = function()
      require("nvim-autopairs").setup({
        map_cr = true,  -- This maps the <CR> (Enter) key to split paired brackets intelligently.
        -- You can add additional settings here.
      })

      -- OPTIONAL: If you're using nvim-cmp, add integration for a smoother experience.
      local cmp_status_ok, cmp = pcall(require, "cmp")
      if cmp_status_ok then
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end
    end,
  },
  -- Add other plugins here...
}

