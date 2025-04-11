return {

    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
        build = function()
            vim.fn.jobstart({
                "cmd.exe",
                "/c",
                "C:\\Program Files (x86)\\LuaRocks\\luarocks.cmd",  -- use the full path
                "--version"
            }, {
                    on_stdout = function(_, data)
                        print("luarocks output: " .. table.concat(data, "\n"))
                    end,
                    on_stderr = function(_, data)
                        print("luarocks error: " .. table.concat(data, "\n"))
                    end,
                })
        end
    },

    "eandrju/cellular-automaton.nvim",
}

