local harpoon = require("harpoon")

harpoon:setup({})

return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      --  Add keymaps
      {
        "<leader>a",
        function()
          harpoon:list():append()
        end,
        desc = "Append to harpoon list",
      },
      {
        "<leader>r",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Read the harpoon list",
      },
      {
        "<leader>1",
        function()
          harpoon:list():select(1)
        end,
      },
      {
        "<leader>2",
        function()
          harpoon:list():select(2)
        end,
      },
      {
        "<leader>3",
        function()
          harpoon:list():select(3)
        end,
      },
      {
        "<leader>4",
        function()
          harpoon:list():select(4)
        end,
      },
      {
        "<leader>n",
        function()
          harpoon:list():next()
        end,
        desc = "Go to next",
      },
      {
        "<leader>p",
        function()
          harpoon:list():prev()
        end,
        desc = "Go to previous",
      },
    },
  },
}
