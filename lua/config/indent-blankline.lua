vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f38ba8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f9e2af gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#a6e3a1 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#94e2d5 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#89b4fa gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#cba6f7 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}
