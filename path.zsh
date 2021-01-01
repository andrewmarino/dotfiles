# Composer
# export PATH=~/.composer/vendor/bin:$PATH
export PATH="$HOME/.composer/vendor/bin:$PATH"

# Load Node.js global installed binaries
export PATH="$HOME/.node/bin:$PATH"

# Use project specific Node.js binaries before global ones
export PATH="node_modules/.bin:vendor/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
