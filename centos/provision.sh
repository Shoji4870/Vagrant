# emacs26
sudo yum -y install gnutls-devel ncurses-devel make gcc git wget
sudo wget https://ftp.gnu.org/gnu/emacs/emacs-26.1.tar.gz
sudo tar zvxf emacs-26.1.tar.gz
cd emacs-26.1
sudo ./configure
sudo make
sudo make install
cd
git clone https://github.com/Shoji4870/.emacs.d.git

# pyenv
sudo yum -y install zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

# anaconda
pyenv install anaconda3-5.3.1
pyenv global anaconda3-5.3.1
echo 'PATH="$PYENV_ROOT/versions/anaconda3-5.3.1/bin/:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# dokcer
sudo yum -y update
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
