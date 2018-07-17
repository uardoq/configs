# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

###############################################################
# antigen
###############################################################

source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle thefuck
antigen bundle node
antigen bundle npm
antigen bundle nvm
antigen bundle fasd
antigen bundle gradle

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme robbyrussell
# antigen theme geometry-zsh/geometry
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

##############################
# spaceship theme options
##############################
SPACESHIP_PROMPT_ADD_NEWLINE=false
##############################
# spaceship theme options
##############################

# Tell Antigen that you're done.
antigen apply


