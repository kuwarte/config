# File Configurations
--
## Editor Configurations
--
### Neovim
Windows Installation
- This will download the init.vim file directly to your Neovim configuration folder.

- Existing init.vim will be overwritten—backup if necessary.

#### Command Prompt
```code curl -o $HOME/AppData/Local/nvim/init.vim https://raw.githubusercontent.com/kuwarte/editor-config/main/dos/nvim/init.vim```

#### Powershell
```code Invoke-WebRequest -Uri https://raw.githubusercontent.com/kuwarte/editor-config/main/dos/nvim/init.vim -OutFile $env:LOCALAPPDATA\nvim\init.vim```
