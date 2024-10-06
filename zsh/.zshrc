export ANDROID_HOME=$HOME/Android/Sdk
unset ANDROID_SDK_ROOT
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="daveverwer"
plugins=(
  git 
  docker
  fzf
  zsh-interactive-cd
  zsh-autosuggestions
  you-should-use
  zsh-syntax-highlighting
  zsh-bat
)

source $ZSH/oh-my-zsh.sh
