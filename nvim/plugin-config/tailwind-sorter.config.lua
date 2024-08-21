local status, tailwind = pcall(require, "tailwind-sorter")
if not status then
    return
end

tailwind.setup({
    on_save_enabled = true,
    on_save_pattern = { '*.html', '*.js', '*.jsx', '*.tsx', '*.twig', '*.hbs', '*.php', '*.heex', '*.astro' },
    node_path = 'node',
})

