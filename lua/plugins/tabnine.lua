local function tabnine_build_path()
  if vim.loop.os_uname().sysname == "Windows_NT" then
    return "pwsh.exe -file C:\\Users\\hamza\\AppData\\Local\\nvim-data\\lazy\\tabnine-nvim\\dl_binaries.ps1"
  else
    return "/home/hamza/projects/github/tabnine-nvim/dl_binaries.sh"
  end
end

return {
  {
    "codota/tabnine-nvim",
    build = tabnine_build_path(),
    config = function()
      require("tabnine").setup({
        disable_auto_comment = true,
        accept_keymap = "<Tab>",
        dismiss_keymap = "<C-]>",
        debounce_ms = 800,
        suggestion_color = { gui = "#808080", cterm = 244 },
        exclude_filetypes = { "TelescopePrompt" },
        log_file_path = nil, -- absolute path to Tabnine log file
      })
    end,
  },
}
