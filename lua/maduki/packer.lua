vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
    -- Packer can manage itself
    -- Development
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }

    -- Colorschemes
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'
    use 'joshdick/onedark.vim'


    -- Statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')

    use('tpope/vim-fugitive')
    use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }


    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            { 'epilande/vim-react-snippets' },

        }
    }

    use { "zbirenbaum/copilot.lua" }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    }
    use("eandrju/cellular-automaton.nvim")
    -- COMMENTS
    use "terrortylor/nvim-comment"
    use "JoosepAlviste/nvim-ts-context-commentstring"


    use "xiyaowong/nvim-transparent"

    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }

    use 'rcarriga/nvim-notify'

    use({
        "lalitmee/browse.nvim",
        requires = { "nvim-telescope/telescope.nvim" },
    })


    use { 'stevearc/dressing.nvim' }

end)
