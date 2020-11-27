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

