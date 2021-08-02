CONFIG_PATH = vim.fn.stdpath('config')
DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

O = {
    auto_open_tree = 0,
    auto_close_tree = 0,
    auto_complete = true,
    colorscheme = 'lunar',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = true,
    shell = 'bash',
	timeoutlen = 100,
    nvim_tree_disable_netrw = 0,
    extras = false,

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = "all",
        ignore_install = {"haskell"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = false}
    },

    database = {save_location = '~/.config/nvcode_db', auto_execute = 1},
    python = {
        linter = '',
        -- @usage can be 'yapf', 'black'
        formatter = '',
        autoformat = false,
        isort = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true},
		analysis = {type_checking = "basic", auto_search_paths = true, use_library_code_types = true}
    },
    dart = {sdk_path = '/usr/lib/dart/bin/snapshots/analysis_server.dart.snapshot'},
    lua = {
        -- @usage can be 'lua-format'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tsserver = {
        -- @usage can be 'eslint'
        linter = 'eslint',
        -- @usage can be 'prettier'
        formatter = 'eslint',
        autoformat = true,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tailwindls = {filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}},
    clang = {diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}},
	ruby = {
		diagnostics = {virtualtext = {spacing = 0, prefix = ""}, signs = true, underline = true},
		filetypes = {'rb', 'erb', 'rakefile'}
	},
    go = {},
    -- css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true}

	dashboard = {
		custom_header = {
"            _______                   _____                    _____                    _____           ",
"            /::\\    \\                 /\\    \\                  /\\    \\                  /\\    \\         ",
"           /::::\\    \\               /::\\____\\                /::\\    \\                /::\\    \\        ",
"          /::::::\\    \\             /::::|   |               /::::\\    \\              /::::\\    \\       ",
"         /::::::::\\    \\           /:::::|   |              /::::::\\    \\            /::::::\\    \\      ",
"        /:::/~~\\:::\\    \\         /::::::|   |             /:::/\\:::\\    \\          /:::/\\:::\\    \\     ",
"       /:::/    \\:::\\    \\       /:::/|::|   |            /:::/__\\:::\\    \\        /:::/__\\:::\\    \\    ",
"      /:::/    / \\:::\\    \\     /:::/ |::|   |           /::::\\   \\:::\\    \\      /::::\\   \\:::\\    \\   ",
"     /:::/____/   \\:::\\____\\   /:::/  |::|___|______    /::::::\\   \\:::\\    \\    /::::::\\   \\:::\\    \\  ",
"    |:::|    |     |:::|    | /:::/   |::::::::\\    \\  /:::/\\:::\\   \\:::\\    \\  /:::/\\:::\\   \\:::\\____\\ ",
"    |:::|____|     |:::|    |/:::/    |:::::::::\\____\\/:::/  \\:::\\   \\:::\\____\\/:::/  \\:::\\   \\:::|    |",
"     \\:::\\    \\   /:::/    / \\::/    / ~~~~~/:::/    /\\::/    \\:::\\  /:::/    /\\::/   |::::\\  /:::|____|",
"      \\:::\\    \\ /:::/    /   \\/____/      /:::/    /  \\/____/ \\:::\\/:::/    /  \\/____|:::::\\/:::/    / ",
"       \\:::\\    /:::/    /                /:::/    /            \\::::::/    /         |:::::::::/    /  ",
"        \\:::\\__/:::/    /                /:::/    /              \\::::/    /          |::|\\::::/    /   ",
"         \\::::::::/    /                /:::/    /               /:::/    /           |::| \\::/____/    ",
"          \\::::::/    /                /:::/    /               /:::/    /            |::|  ~|          ",
"           \\::::/    /                /:::/    /               /:::/    /             |::|   |          ",
"            \\::/____/                /:::/    /               /:::/    /              \\::|   |          ",
"             ~~                      \\::/    /                \\::/    /                \\:|   |          ",
"                                      \\/____/                  \\/____/                  \\|___|          ",
		},
		footer= {'omar.geilo.co'}
	}
}

