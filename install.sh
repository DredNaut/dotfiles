# Install Pathogen
echo ****** Installing Pathogen ******
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Airline
echo ****** Installing Airline ******
git clone https://github.com/vim-airline/vim-airline.git ./.vim/bundle

# Install Airline-themes
echo ****** Installing Airline Themes ******
git clone https://github.com/vim-airline/vim-airline-themes.git ./.vim/bundle

# Install Fugitive
echo ****** Installing Fugitive ******
git clone https://github.com/tpope/vim-fugitive.git ./.vim/bundle

# Install Powerline Fonts
echo ****** Installing Powerline Fonts ******
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
