local status, sitter = pcall(require, 'nvim-treesitter.configs')
if not status then
    return
end

sitter.setup({
    highlight={enable=true}
})
