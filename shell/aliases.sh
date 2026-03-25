# ─── Navigation ─────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias desk='cd ~/Desktop'
alias proj='cd ~/Projects'

# ─── List Files ─────────────────────────────
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

# ─── Git Shortcuts ──────────────────────────
alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add -A'
alias gc='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gl='git log --oneline --graph -15'
alias gd='git diff'
alias gco='git checkout'
alias gb='git branch'
alias gcb='git checkout -b'
alias gm='git merge'
alias gst='git stash'
alias gstp='git stash pop'

# ─── Docker ─────────────────────────────────
alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias dcr='docker compose restart'
alias dcl='docker compose logs -f'
alias dps='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"'
alias dprune='docker system prune -af'

# ─── NPM / Node ────────────────────────────
alias ni='npm install'
alias nr='npm run'
alias nrd='npm run dev'
alias nrb='npm run build'
alias nrt='npm run test'

# ─── Python ─────────────────────────────────
alias py='python'
alias pip='pip3'
alias venv='python -m venv .venv && source .venv/bin/activate'

# ─── Utilities ──────────────────────────────
alias cls='clear'
alias h='history'
alias grep='grep --color=auto'
alias ports='netstat -tulanp'
alias myip='curl -s https://ifconfig.me'
alias weather='curl wttr.in'
alias serve='python -m http.server 8000'

# ─── Safety ─────────────────────────────────
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# ─── Quick Edit ─────────────────────────────
alias zshrc='code ~/.zshrc'
alias bashrc='code ~/.bashrc'
alias hosts='sudo code /etc/hosts'
