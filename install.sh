#!/bin/bash
EXTENSION_NAME=rss-feed@gnome-shell-extension.todevelopers.github.com
INSTALL_PATH=~/.local/share/gnome-shell/extensions/$EXTENSION_NAME;
echo $INSTALL_PATH
if [ -d "$INSTALL_PATH" ]; then
    read -p "The extensions has been installed in special path, do you want to removed it? (y/N)?" choice
    case "$choice" in
        y|Y )
            rm -rdf $INSTALL_PATH;;
        * )
            echo "Cancelled."
            exit 0
            ;;
    esac
fi

mkdir $INSTALL_PATH
cp -R $EXTENSION_NAME/* $INSTALL_PATH
echo "All done, Enjoy it! :)"
