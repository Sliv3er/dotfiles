#!/bin/bash
# Quick project scaffolding - Ayoub Ghodhbane
NAME=$1
TYPE=${2:-node}

if [ -z "$NAME" ]; then
    echo 'Usage: new-project.sh <name> [node|react|next|python]'
    exit 1
fi

mkdir -p $NAME && cd $NAME
git init
echo "# $NAME" > README.md
cp ~/dotfiles/.editorconfig .
cp ~/dotfiles/.prettierrc .
cp ~/dotfiles/git/.gitignore_global .gitignore

case $TYPE in
    react) npx create-react-app . --template typescript ;;
    next) npx create-next-app . --typescript --tailwind --eslint ;;
    python) python -m venv .venv && echo 'requirements.txt' >> .gitignore ;;
    node) npm init -y && npm i -D typescript @types/node ts-node ;;
esac

git add -A && git commit -m 'Initial commit'
echo "Project $NAME created!"