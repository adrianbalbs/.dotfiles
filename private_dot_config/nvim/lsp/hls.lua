---@type vim.lsp.Config
return {
    cmd = { 'haskell-language-server-wrapper', '--lsp' },
    filetypes = { 'haskell', 'lhaskell' },

    root_dir = vim.fs.dirname(vim.fs.find({
        "hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml"
    }, { upward = true })[1]),
    settings = {
        haskell = {
            formattingProvider = 'ormolu',
            cabalFormattingProvider = 'cabal-fmt',
        },
    },
}
