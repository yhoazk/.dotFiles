# .dotFiles
Configuration files




## _vimrc
Vim configuration with no bells and w/o gui menus.

To set the colorscheme add the file in:`/usr/share/vim/vim72/colors` in linux.


## Install Fonts

gksu nautilus

* create if it does not exist `/usr/share/fonts/truetype/`

* copy font files to directory just created.

* then update your font cache with the command
```
  sudo fc-cache -fv
```


## .gitconfig
Git configuration for beyond compare and commit credentials

### Setting aliases
```
$git config --global alias.st "status"
```
Find file alias:
Find if the file is tracked.
```
[alias]
find_file = "!git ls-files | grep -i"
```
Use:
```
git find_file file.txt
```

Find a string the the code-base
```
[alias]
grep = grep -Ii
```
