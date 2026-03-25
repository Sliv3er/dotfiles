# ⚙️ Dotfiles

![Shell](https://img.shields.io/badge/Shell-Bash%20%2F%20PowerShell-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![VS Code](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)

> My personal developer environment configuration files. Optimized for full-stack development, cybersecurity work, and DevOps workflows.

---

## 📁 Structure

```
dotfiles/
├── git/
│   └── .gitconfig         # Git aliases, defaults, signing
├── vscode/
│   └── settings.json      # Editor settings, fonts, themes
├── docker/
│   └── docker-compose.base.yml  # Reusable Docker services
├── shell/
│   ├── .bashrc            # Bash config
│   └── aliases.sh         # Custom shell aliases
├── scripts/
│   └── setup.ps1          # Windows setup script
└── README.md
```

## 🚀 Quick Setup (Windows)

```powershell
# Clone the repo
git clone https://github.com/Sliv3er/dotfiles.git ~/dotfiles

# Run setup script
cd ~/dotfiles
.\scripts\setup.ps1
```

## 🔧 What's Included

| Config | Description |
|--------|-----------|
| **Git** | Commit signing, useful aliases (`git lg`, `git st`, `git co`), default branch, pull strategy |
| **VS Code** | JetBrains Mono font, dark theme, auto-save, format on save, recommended extensions |
| **Docker** | Base compose file with PostgreSQL, Redis, Nginx reverse proxy |
| **Shell** | Bash aliases, custom prompt, PATH additions |
| **Scripts** | Windows setup: installs tools via winget, configures Git, links dotfiles |

## 📝 License

MIT — see [LICENSE](LICENSE)
