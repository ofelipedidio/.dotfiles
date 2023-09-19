pushd $DOTFILES

for folder in $(sed 's/,/ /g' <<< $STOW_FOLDERS)
do
    echo "stow $folder"
    stow -D $folder
    stow $folder
done

popd

