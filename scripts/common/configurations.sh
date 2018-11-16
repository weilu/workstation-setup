echo
echo "Configuring iTerm"
cp files/com.googlecode.iterm2.plist ~/Library/Preferences

echo "Configuring ShiftIt"
open /Applications/ShiftIt.app

echo "Configuring FlyCut"
open /Applications/Flycut.app

echo
echo "Installing vim configuration"
pushd ~/workspace
if [ ! -d ~/.vim ]; then
    git clone git@github.com:weilu/vim-config.git
    pushd vim-config
    rake
    popd
fi
popd


