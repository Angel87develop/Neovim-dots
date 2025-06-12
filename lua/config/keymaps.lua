-- This file contains custom key mappings for Neovim.

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

----- OIL -----
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Ventanas
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Mover a la ventana izquierda" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Mover a la ventana derecha" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Mover a la ventana abajo" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Mover a la ventana arriba" })

-- Redimensionar ventanas
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { desc = "Reducir altura" })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { desc = "Aumentar altura" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Reducir ancho" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Aumentar ancho" })

-- Mover líneas
vim.keymap.set({ "n", "i", "v" }, "<A-j>", ":m .+1<CR>==", { desc = "Mover línea abajo" })
vim.keymap.set({ "n", "i", "v" }, "<A-k>", ":m .-2<CR>==", { desc = "Mover línea arriba" })

-- Buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Siguiente buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Buffer anterior" })
vim.keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>", { desc = "Buscar buffers" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Eliminar buffer" })
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", { desc = "Cerrar otros buffers" })

-- Guardar
vim.keymap.set({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Guardar archivo" })

-- Búsqueda
vim.keymap.set("n", "n", "nzzzv", { desc = "Buscar siguiente con centrado" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Buscar anterior con centrado" })

-- Comentarios (con mini.comment o similar)
vim.keymap.set("n", "gc", "<cmd>CommentToggle<cr>", { desc = "Alternar comentario" })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover info" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Ir a definición" })
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", { desc = "Referencias" })
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Formatear buffer" })

-- Toggle UI
vim.keymap.set("n", "<leader>ul", "<cmd>set relativenumber!<cr>", { desc = "Alternar número relativo" })
vim.keymap.set("n", "<leader>uw", "<cmd>set wrap!<cr>", { desc = "Alternar wrap" })
vim.keymap.set("n", "<leader>us", "<cmd>set spell!<cr>", { desc = "Alternar ortografía" })
vim.keymap.set("n", "<leader>ud", "<cmd>lua vim.diagnostic.disable()<cr>", { desc = "Desactivar diagnósticos" })

-- Archivos
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Buscar archivos" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Buscar en texto" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Archivos recientes" })
vim.keymap.set("n", "<leader>fn", "<cmd>enew<cr>", { desc = "Nuevo archivo" })

-- Plugins
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Abrir Lazy" })
vim.keymap.set("n", "<leader>m", "<cmd>Mason<cr>", { desc = "Abrir Mason" })

-- Terminal
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Abrir terminal" })

-- QF y LocList
vim.keymap.set("n", "<leader>xq", "<cmd>copen<cr>", { desc = "Abrir quickfix" })
vim.keymap.set("n", "<leader>xl", "<cmd>lopen<cr>", { desc = "Abrir loclist" })
vim.keymap.set("n", "]q", "<cmd>cnext<cr>", { desc = "Quickfix siguiente" })
vim.keymap.set("n", "[q", "<cmd>cprev<cr>", { desc = "Quickfix anterior" })

-- Otros
vim.keymap.set("n", "<leader>uT", "<cmd>TSContextToggle<cr>", { desc = "Alternar Treesitter context" })
vim.keymap.set("n", "<leader>ua", "<cmd>ToggleAnimation<cr>", { desc = "Alternar animaciones" })
