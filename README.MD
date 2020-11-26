# 211-vim-setup 
Want your local vim to be set up just like the one in the comp 211 container?   
To customize vim, you need to edit your vimrc and install plugins. The following shell script will do that for you.  
Just follow the steps below!

>Please note: This script is meant to run in bash. If you are on Mac/Linux, you should be good to go, just choose the corresponding script. If you are on Windows though, you will need to download a Linux distribution. Then you can run the linux script. I recommend downloading Ubuntu on the Microsoft store. If you like using the Windows terminal, you can use it with Ubuntu by opening a new tab on the top and selecting Ubuntu once it's installed.  

Running this script will overwrite whatever current configuration you have. Please make sure that this is what you want before doing this.  

### Steps
1. Clone repository and enter folder  

    git clone https://github.com/dylanbinley/211-vim-setup.git  
    
    cd 211-vim-setup
2.  Give permission to run the shell script  

    chmod u+x vim-setup-<linux/mac>.sh

3. Run the shell script  

    ./vim-setup-<linux/mac>.sh

>All code adapted from the 211 container (https://github.com/comp211/comp211-container).  
>I encourage you guys to check it out!  

