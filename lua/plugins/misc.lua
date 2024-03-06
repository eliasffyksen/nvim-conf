return {
{
        'folke/flash.nvim',
        event = 'VeryLazy',
        opts = {
            label = { rainbow = { enabled = true } },

            jump = {
                nohlsearch = true,
            },
            modes = {
                char = {
                    enabled = true,
                    multi_line = false,
                    autohide = true,
                    jump_labels = true,
                    highlight = { backdrop = false },
                    --                    jump = { autojump = true },
                },
            },
            search = {
                exclude = {
                    'notify',
                    'terminal',
                    'cmp_menu',
                    'noice',
                    'flash_prompt',
                    'NeogitStatus',
                    'NeogitConsole',
                    'NeogitStatusNew',
                    'NeogitGitCommandHistory',
                    'NeogitCommitSelectView',
                    'NeogitLogView',
                    'NeogitRebaseTodo',
                    'NeogitPopup',
                    'NeogitCommitView',
                },
            },
        },

        keys = {
            {
                's',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').jump()
                end,
                desc = 'Flash',
            },
            {
                'S',
                mode = { 'n', 'x', 'o' },
                function()
                    require('flash').treesitter()
                end,
                desc = 'Flash Treesitter',
            },
            {
                'gs',
                mode = 'o',
                function()
                    require('flash').remote()
                end,
                desc = 'Remote Flash',
            },
        },
    },
	{
		'hauleth/asyncdo.vim',
	},
	{
        'j-hui/fidget.nvim',
        config = function()
            require('fidget').setup({
                notification = {
                    override_vim_notify = true,
                    configs = {
                        default = {
                            name = '',
                            icon = '',
                            ttl = 5,
                            group_style = 'Title',
                            icon_style = 'Special',
                            annote_style = 'Question',
                            debug_style = 'Comment',
                            warn_style = 'WarningMsg',
                            error_style = 'ErrorMsg',
                            debug_annote = 'DEBUG',
                            info_annote = 'INFO',
                            warn_annote = 'WARN',
                            error_annote = 'ERROR',
                        },
                    },
                    window = {
                        border = 'rounded',
                        normal_hl = '',
                    },
                },
                integration = {
                    ['nvim-tree'] = {
                        enable = false, -- Integrate with nvim-tree/nvim-tree.lua (if installed)
                    },
                },
            })
        end,
    },
	{
        'cbochs/grapple.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local grapple = require('grapple')
            grapple.setup()

            vim.keymap.set('n', '<leader>gg', grapple.toggle, { desc = 'Grapple Tag' })
            vim.keymap.set('n', '<leader>gr', grapple.reset, { desc = 'Grapple Clear' })
            vim.keymap.set('n', '<leader>gp', grapple.popup_tags, { desc = 'Grapple Menu' })
            vim.keymap.set('n', '[g', function()
                grapple.cycle_backward()
                local fidget = require('fidget')
                fidget.notify('Grapple Cycle Backward')
            end, { desc = 'Grapple Prev' })
            vim.keymap.set('n', ']g', function()
                grapple.cycle_foward()
                local fidget = require('fidget')
                fidget.notify('Grapple Cycle Forward')
            end, { desc = 'Grapple Next' })
        end,
        keys = { '<leader>g' },
    },
	{'kevinhwang91/nvim-bqf', ft = 'qf'}
}
