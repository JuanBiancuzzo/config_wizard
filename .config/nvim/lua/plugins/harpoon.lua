return {
    "ThePrimeagen/harpoon",
    config = function ()
        require("harpoon").setup({})

        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", function() mark.add_file() end, {})
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {})

        -- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    end
}
