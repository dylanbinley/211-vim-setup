# 211-vim-setup 
Vim is a great text editor, but it does require some configuration to be useful. 
 
If you enjoyed using the Vim setup in 211, and you want to use the same outside of the container, the scripts here should do that for you. Just follow the steps below. Also, if you're interested in further customization, I've included some tips towards the end to help you get started. 

Running these scripts will overwrite whatever current configuration you have. Please make sure that this is what you want before doing this.  

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
2.  Give permission to run the shell script. Choose the mac or linux script depending on your operating system.
```sh
chmod u+x vim-setup-<linux/mac>.sh
```
3. Run the shell script  
```sh
./vim-setup-<linux/mac>.sh
```
4. Open Vim outside the container. If all went well, it should be the same setup from 211!
```sh
vim <file>
```
>All code adapted from the 211 container (https://github.com/comp211/comp211-container).  
>I encourage you guys to check it out!  

### Potential problems
- If you used the script for macOS, there is a chance that it exits prematurely. If you never saw Vim open to install plugins, try running the script a second time.
- If you see an error with the YouCompleteMe installation (a plugin for autocomplete), your operating system may be outdated. YouCompleteMe requires more recent versions of Vim, Python, and C/C++ compilers. Typically, these can be installed on older machines, but it may require more effort. [Here](https://ycm-core.github.io/YouCompleteMe/#installation) is a link to the YCM installation page to help you get started. 
- If you notice one of your keyboard keys isn't working as expected, you may need to add extra key mappings to your vimrc. Searching the web is probably your best bet, but some of the information below may help too.

### Extra configuation
To customize Vim, you need to edit your vimrc. To open your vimrc and modify it, run the following command:  
```sh
vim ~/.vimrc
```
#### Allowing arrow keys  
Currently, the arrow keys cannot be used to navigate through normal mode. This has been set with mappings towards the bottom of the vimrc (lines 48-62).  
If you want to turn this off, open your vimrc and delete the remaps corresponding to the arrow keys. The next time you open up Vim, it should work!  

#### Changing the colorscheme  
Our current vimrc uses the plugin [gruvbox](https://github.com/morhetz/gruvbox) to set the colorscheme, and we are using dark mode. You can read more about configuring gruvbox [here](https://www.vim.org/scripts/script.php?script_id=4349).  
To try out different colorschemes, you will need to download other plugins. [Here](https://vimcolorschemes.com/most-popular) is a webpage that includes popular colorschemes. Our vimrc is using Vundle to manage plugins, so you will need to run ```:PluginInstall``` inside of Vim to install them.

#### Starting from scratch
If you would like to make your own vimrc, you can delete the following files to start over.  
```sh
rm ~/.vimrc
rm ~/.ycm_extra_conf.py
rm -rf ~/.vim
```

You will need a plugin manager to add many of the features you want. In the shell scripts, we installed Vundle, but there are other options too.  
You will probably want YouCompleteMe for autocompletion, which requires extra installation. You can find the instructions [here](https://ycm-core.github.io/YouCompleteMe/#installation), or you can look through the shell scripts.  
Hopefully, the vimrc and shell scripts here will serve as inspiration for your own Vim customization. Good luck!
