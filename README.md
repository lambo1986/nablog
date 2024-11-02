# README

This is intended to be a full-stack Rails blog/ personal website. 

* Ruby version 3.3.4
* Postgresql
* Rails 7.1.3.4

## I've been having trouble with Ruby Versions conflicting, and adding this to the end of my shell config with zsh helped:

```
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
```

- Open shell config with zsh:

```
nano ~/.zshrc
```

- These lines ensure that rbenv is in your system’s PATH and that it’s initialized correctly each time you open a terminal.

### Save and Exit After adding those lines:

- Press CTRL + O to save the file.
- Press Enter to confirm the filename.
- Press CTRL + X to exit the editor.
- Reload Shell Config without restarting Terminal:

```
source ~/.zshrc  
```

### Check Current Ruby and Rails Versions:

```
ruby -v
rails -v
```

### You may also need to install Node and rbenv or something similar.