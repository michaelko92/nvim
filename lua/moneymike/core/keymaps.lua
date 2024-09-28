vim.g.mapleader = " "

local keymap = vim.keymap


keymap.set("n", "<leader>h", ":nohl<cr>", { desc = "clear search highlights" })

keymap.set({"n", "x"}, "c", '"_c')
keymap.set({"n", "x"}, "s", '"_s')
keymap.set({"n", "x"}, "d", '"_d')
keymap.set({"n", "x"}, "dd", '"_dd')
keymap.set({"n", "x"}, "cc", '"_S')
keymap.set({"n", "x"}, "S", '"_S')
keymap.set({"n", "x"}, "C", '"_C')
keymap.set({"n", "x"}, "D", '"_D')
keymap.set({"n", "x"}, "x", '"_x')


keymap.set({"n", "x"}, "<leader>x", "d", {desc = "cut"})
keymap.set({"n", "x"}, "<leader>xx", "dd", {desc = "cut line"})
keymap.set({"n", "x"}, "<leader>X", "D", {desc = "cut to end of line"})


keymap.set("n", "<leader>sv", "<c-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<c-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<c-w>=", { desc = "make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "close current split" })


keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "close current tab" })
keymap.set("n", "<S-D-Right>", "<cmd>tabn<cr>", { desc = "go to next tab" })
keymap.set("n", "<S-D-Left>", "<cmd>tabp<cr>", { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<cr>", { desc = "open current buffer in new tab" })



keymap.set("x", ">", ">gv")
keymap.set("x", "<", "<gv")



keymap.set("n", "<m-c-pageup>", "<c-u>zz")
keymap.set("n", "<m-c-pagedown>", "<c-d>zz")



keymap.set("n", "<M-Up>", ":m .-2<cr>==", { desc = "move line up" })
keymap.set("n", "<M-Down>", ":m .+1<cr>==", { desc = "move line up" })
keymap.set("n", "<m-down>", ":m '>+1<cr>gv==kgvo<esc>=kgvo", { desc = "move highlighted text down" })
keymap.set("n", "<m-up>", ":m '<-2<cr>gv==jgvo<esc>=jgvo", { desc = "move highlighted text up" })



keymap.set({"n", "x"}, "<s-up>", "6k", { desc = "move 6 lines up" })
keymap.set({"n", "x"}, "<s-down>", "6j", { desc = "move 6 lines down" })



keymap.set("n", "U", "<c-r>", {desc = "re-do"})


keymap.set("n", "<leader>p", "<c-^>", {desc = "go to previous file"})


keymap.set("n", "<leader>/", "<plug>(comment_toggle_linewise_current)")
keymap.set("x", "<leader>/", "<plug>(comment_toggle_linewise_visual)")

keymap.set("n", "<leader>q", ":cclose<cr>", {desc = "close quickfix list"})

