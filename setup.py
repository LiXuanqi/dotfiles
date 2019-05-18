import os

home_path = os.getenv("HOME")
# install vim8.1 with python3 support.
"""
install_vim_cmd = 'brew install vim'
os.system(install_vim_cmd)
"""
# install nerd font
os.system('brew tap homebrew/cask-fonts')
os.system('brew cask install font-hack-nerd-font')

# install zsh theme - powerlevel10k
"""
zsh_themes_path = "%s/.oh-my-zsh/custom/themes" % (home_path)
theme_git_url = "https://github.com/romkatv/powerlevel10k.git"

theme_git_clone_cmd = "git clone %s %s/powerlevel10k" % (theme_git_url,
        zsh_themes_path)
os.system(theme_git_clone_cmd)
"""
