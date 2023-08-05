# DotFiles
these are my awesomeWM dotfiles
it also includes my nvim config

NOTE! (if you want to use the nvim config file, remember to install nodeJS and PLUG for nvim first)


## we need these first:
awesome, rofi, picom(pijulius fork), zsh is optional.

## Installation:
after downloading awesome wm, open the `.config` folder (create one if it doesn't exist).
now paste the `awesome` folder in my git repo into the `.config` folder.
now in your `.xinitrc` file, you need to add this command at the end of the file
```
exec awesome --config ~/.config/awesome/Dishonered/config.lua
```

do the same with all the other folders except the `scropt` folder.
the scripts folder contains basic scripts such as `.zshrc, .xinit` and all those things

if you want to get the z-shell, just paste the `.zshrc` file in the `scripts` folder into your home directory




im planning on making a self-installation script so you don't have to go through this hassel.
also the `awesome` folder is kind of a mess... but you'll figure it oouutt... _i'll clean it someday_
