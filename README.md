# myplugin.nvim

> A Neovim plugin that does something useful.

<!-- Uncomment badges after pushing to GitHub:
[![Tests](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/tests.yml/badge.svg)](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/tests.yml)
[![Lint](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/lint.yml/badge.svg)](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/lint.yml)
[![Format](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/format.yml/badge.svg)](https://github.com/YOUR_USERNAME/myplugin.nvim/actions/workflows/format.yml)
-->

## Features

- Feature 1
- Feature 2

## Requirements

- Neovim 0.8+

## Installation

```lua
-- lazy.nvim
{ "YOUR_USERNAME/myplugin.nvim", opts = {} }

-- packer.nvim
use { "YOUR_USERNAME/myplugin.nvim", config = function() require("myplugin").setup() end }
```

## Usage

```vim
:Myplugin
```

## Configuration

```lua
require("myplugin").setup({
  greeting = "Hello from myplugin!",
})
```

### Options

| Option | Type | Default | Description |
| --- | --- | --- | --- |
| `greeting` | `string` | `"Hello from myplugin!"` | The greeting message |

## Development

### Getting Started from Template

1. Click "Use this template" on GitHub to create your repo
2. Clone your new repo
3. Search and replace `myplugin` with your plugin name:
   ```bash
   # Preview what will change
   grep -r "myplugin" --include="*.lua" --include="*.md" --include="Makefile" -l

   # Rename files
   mv lua/myplugin lua/YOUR_PLUGIN_NAME
   mv plugin/myplugin.lua plugin/YOUR_PLUGIN_NAME.lua

   # Replace in file contents (macOS)
   find . -type f \( -name "*.lua" -o -name "*.md" -o -name "Makefile" \) -exec sed -i '' 's/myplugin/YOUR_PLUGIN_NAME/g' {} +

   # Replace in file contents (Linux)
   find . -type f \( -name "*.lua" -o -name "*.md" -o -name "Makefile" \) -exec sed -i 's/myplugin/YOUR_PLUGIN_NAME/g' {} +
   ```
4. Update `README.md` — replace `YOUR_USERNAME`, write your own description and features
5. Choose your license (MIT is included by default)

### Testing

Tests use [mini.test](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-test.md). Run them with:

```bash
make test
```

Or manually:

```bash
MINI_PATH=/path/to/mini.nvim \
  nvim --headless -u tests/minimal_init.lua \
  -c "lua MiniTest.run({})" -c "qa"
```

### Linting

```bash
make lint
```

### Formatting

```bash
make format        # auto-format
make format-check  # check only (CI uses this)
```

## License

[MIT](LICENSE)
