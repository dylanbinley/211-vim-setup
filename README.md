# 211-vim-setup 
Want your vim to be set up just like the one in the comp 211 container?   
To customize vim, you need to edit your vimrc and install plugins. These shell scripts should do that for you.  
Just follow the steps below!

Running this script will overwrite whatever current configuration you have. Please make sure that this is what you want before doing this.

### Preparation
1. If you are on Windows, you will need to download a Linux distribution, then you can run the Linux option. I recommend downloading Ubuntu through the Microsoft store. If you like using the Windows Terminal, you can use it with Ubuntu by opening a new tab on the top and selecting Ubuntu once it's installed. 
2. If you are using macOS, you will need to have the package manager [homebrew](https://brew.sh/) installed. This can be easily installed through running the following command:
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
3. If you are using Linux, you should be good to go. 

### Steps
1. Clone repository and enter folder  
```sh
git clone https://github.com/dylanbinley/211-vim-setup.git  
cd 211-vim-setup
```
2.  Give permission to run the shell script  
```sh
chmod u+x vim-setup-<linux/mac>.sh
```
3. Run the shell script  
```sh
./vim-setup-<linux/mac>.sh
```
>All code adapted from the 211 container (https://github.com/comp211/comp211-container).  
>I encourage you guys to check it out!  

### Extra Configuation
As mentioned, all the Vim configuring is done in the vimrc. To open your vimrc and modify it, run the following command:  
```sh
vim ~/.vimrc
```
#### Allowing arrow keys  
Currently, the arrow keys cannot be used to navigate through normal mode. This has been set with mappings towards the bottom of the vimrc (lines 48-62).  
If you want to turn this off, open your vimrc and delete the remaps corresponding to the arrow keys. The next time you open up Vim, it should work!  

#### Changing the colorscheme  
Our current vimrc uses the plugin [gruvbox](https://github.com/morhetz/gruvbox) to set the colorscheme, and we are using dark mode. You can read more about configuring gruvbox [here](https://www.vim.org/scripts/script.php?script_id=4349).  
To try out different colorschemes, you will need to download other plugins. [Here](https://vimcolorschemes.com/most-popular) is a webpage that includes popular colorschemes. Our vimrc is using Vundle to manage plugins, so you will need to run ```:PluginInstall``` inside of Vim to install them.

#### Starting From Scratch
If you would like to make your own vimrc, you can delete the following files to start over.  
```sh
rm ~/.vimrc
rm ~/.ycm_extra_conf.py
rm -rf ~/.vim
```

You will need a plugin manager to add many of the features you want. You can read through either of the shell scripts to see how we downloaded vundle, but you can use other options as well. You will probably want YouCompleteMe for autocompletion, which requires extra installation instructions. You can find them [here](https://github.com/ycm-core/YouCompleteMe#installation), or you can just look through the shell scripts. Hopefully the vimrc and shell scripts here will serve as inspiration for your own Vim customization.  
Good luck!
