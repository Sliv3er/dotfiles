# ────────────────────────────────────────────────
# Windows Developer Environment Setup Script
# Author: Ayoub Ghodhbane
# ────────────────────────────────────────────────

Write-Host "🚀 Setting up development environment..." -ForegroundColor Cyan

# ─── Install Tools via Winget ──────────────────
$tools = @(
    "Git.Git",
    "Microsoft.VisualStudioCode",
    "OpenJS.NodeJS.LTS",
    "Python.Python.3.12",
    "Docker.DockerDesktop",
    "Postman.Postman",
    "JetBrains.Toolbox"
)

foreach ($tool in $tools) {
    Write-Host "📦 Installing $tool..." -ForegroundColor Yellow
    winget install --id $tool --accept-package-agreements --accept-source-agreements -e
}

# ─── Install VS Code Extensions ────────────────
$extensions = @(
    "esbenp.prettier-vscode",
    "dbaeumer.vscode-eslint",
    "eamodio.gitlens",
    "pkief.material-icon-theme",
    "zhuangtongfa.material-theme",
    "formulahendry.auto-rename-tag",
    "bradlc.vscode-tailwindcss",
    "ms-azuretools.vscode-docker",
    "ms-vscode-remote.remote-containers"
)

Write-Host "`n🎨 Installing VS Code extensions..." -ForegroundColor Cyan
foreach ($ext in $extensions) {
    code --install-extension $ext --force
}

# ─── Configure Git ─────────────────────────────
Write-Host "`n⚙️ Configuring Git..." -ForegroundColor Cyan
git config --global user.name "Ayoub Ghodhbane"
git config --global user.email "ghodhbaneayoub@gmail.com"
git config --global init.defaultBranch main
git config --global pull.rebase true
git config --global push.autoSetupRemote true
git config --global core.editor "code --wait"

# ─── Create Project Directories ────────────────
$dirs = @("$HOME\Projects", "$HOME\Projects\personal", "$HOME\Projects\work")
foreach ($dir in $dirs) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "📁 Created $dir" -ForegroundColor Green
    }
}

Write-Host "`n✅ Setup complete! Restart your terminal." -ForegroundColor Green
