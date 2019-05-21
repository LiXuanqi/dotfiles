import os
home_path = os.getenv("HOME")
run = os.system
# create soft link for dot files

# install vim8.1 with python3 support.
"""
run('brew install vim')
"""
# install nerd font
"""
run('brew tap homebrew/cask-fonts')
run('brew cask install font-hack-nerd-font')
"""
# install zsh theme - powerlevel10k
"""
zsh_themes_path = "%s/.oh-my-zsh/custom/themes" % (home_path)
theme_git_url = "https://github.com/romkatv/powerlevel10k.git"

theme_git_clone_cmd = "git clone %s %s/powerlevel10k" % (theme_git_url,
        zsh_themes_path)
run(theme_git_clone_cmd)
"""
# install tmux
"""
run("brew install tmux")
"""

