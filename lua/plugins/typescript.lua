return {
    "leafgarland/typescript-vim",
    config = function ()
        vim.g['typescript_indent_disable'] = 1
        vim.g['typescript_compiler_binary '] = 'tsc'
    end
}
