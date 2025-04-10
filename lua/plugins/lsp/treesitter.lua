return {
    'nvim-treesitter/nvim-treesitter',
    opts = {
        --[[ context_commentstring = {
            config = {
                javascript = {
                    __default = '// %s',
                    jsx_element = '{/* %s */}',
                    jsx_fragment = '{/* %s */}',
                    jsx_attribute = '// %s',
                    comment = '// %s',
                },
                typescript = {
                    __default = '// %s',
                    __multiline = '/* %s */',
                    jsx_element = '{/* %s */}',
                    jsx_fragment = '{/* %s */}',
                    jsx_attribute = '// %s',
                    comment = '// %s',
                    tsx_element = '{/* %s */}',
                    tsx_fragment = '{/* %s */}',
                    tsx_attribute = '// %s',
                },
            },
        } ]]
    },
    dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = { 'rust', 'javascript' },
            -- highlight = { enable = true, }
        }
    end


}
