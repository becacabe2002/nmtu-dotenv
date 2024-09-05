Using the combination of **GNU Stow** and **Git** to synchronize dot files configurations between machines

---
_Stow Explain_:
* Stow is a symlink manager, which helps user store all configuration files in one directory.
* When `stow` a file, a symlink will be created between file and identical file in home directory.

<!> If symlink is edited, the actual file will change too

---

* List of configuration need to migrate:
[x] zsh (with Omz): `~/.zshrc`
[x] tmux: `~/.tmux.conf`
[x] alacritty: `~/.config/alacritty/*`
[x] nvim: `~/.config/nvim/*`

* Steps to proceed:
    1. Create a github repository to store all dotfiles
    2. Create a local repo and add remote 
    3. Move all configuration file from home directory to under newly created local repo. (Attention !!: keep the config files structure as they were).
    4. Run `stow` command to create symlinks
    5. Commit and push to remote repo.
        + For each machine, clone this repo to local first, then stow it second

* Stow naming convention:
```text
<parent-directory>/<package-name>/its/file/structure
```

* Commands
```shell
# Assume we are current in parent-directory
stow package name
```
