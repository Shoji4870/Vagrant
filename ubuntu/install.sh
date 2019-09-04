# emacs26
sudo add-apt-repository -y ppa:kelleyk/emacs
sudo apt update
sudo apt -y install emacs26
sudo apt install -y git wget curl
git clone https://github.com/Shoji4870/.emacs.d.git

# Pyenv
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev curl llvm libncurses5-dev libncursesw5-dev libpng-dev
git clone git://github.com/yyuu/pyenv.git ~/.pyenv
git clone https://github.com/yyuu/pyenv-pip-rehash.git ~/.pyenv/plugins/pyenv-pip-rehash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
source ~/.profile

# Anaconda
pyenv install anaconda3-5.3.1
pyenv global anaconda3-5.3.1
echo 'export PATH="$PYENV_ROOT/versions/anaconda3-5.3.1/bin:$PATH"' >> ~/.profile
source ~/.profile
