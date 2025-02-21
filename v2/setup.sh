#!/bin/bash

# Exit on error
set -e

echo "🚀 Setting up SQL Learning Project environment..."

# Create Python virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "📦 Creating Python virtual environment..."
    python3 -m venv venv
else
    echo "✓ Virtual environment already exists"
fi

# Activate virtual environment
echo "🔌 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip to latest version
echo "🔄 Upgrading pip to latest version..."
pip install --upgrade pip

# Install project requirements
echo "📚 Installing project dependencies..."
pip install -r requirements.txt

# Create .gitignore if it doesn't exist
if [ ! -f ".gitignore" ]; then
    echo "📝 Creating .gitignore file..."
    cat > .gitignore << EOL
# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
venv/
.env

# Jupyter Notebook
.ipynb_checkpoints
*/.ipynb_checkpoints/*

# VS Code
.vscode/*
!.vscode/settings.json
!.vscode/tasks.json
!.vscode/launch.json
!.vscode/extensions.json

# DuckDB
*.duckdb
*.duckdb.wal

# OS specific
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db
EOL
fi

# Install VS Code extensions
echo "🔧 Installing VS Code extensions..."

# Python and Jupyter support
echo "📦 Installing Python and Jupyter extensions..."
code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension ms-python.vscode-pylance

# SQL support
echo "📦 Installing SQL extensions..."
code --install-extension mtxr.sqltools
code --install-extension duckdb.duckdb-vscode

# Development tools
echo "📦 Installing development tools..."
code --install-extension eamodio.gitlens
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension yzhang.markdown-all-in-one
code --install-extension bierner.markdown-mermaid
code --install-extension christian-kohler.path-intellisense
code --install-extension formulahendry.code-runner

# Create VS Code settings if they don't exist
if [ ! -d ".vscode" ]; then
    echo "⚙️  Creating VS Code settings..."
    mkdir -p .vscode
    cat > .vscode/settings.json << EOL
{
    "python.defaultInterpreterPath": "\${workspaceFolder}/venv/bin/python",
    "python.terminal.activateEnvironment": true,
    "jupyter.notebookFileRoot": "\${workspaceFolder}",
    "editor.formatOnSave": true,
    "python.formatting.provider": "black",
    "python.linting.enabled": true,
    "python.linting.pylintEnabled": true,
    "sqltools.connections": [
        {
            "name": "DuckDB Database",
            "driver": "DuckDB",
            "database": "./data/movies.duckdb"
        }
    ],
    "code-runner.executorMap": {
        "python": "\${workspaceFolder}/venv/bin/python"
    }
}
EOL
fi

# Print success message and next steps
echo "
✨ Setup complete! ✨

To start using the project:

1. Make sure your virtual environment is activated:
   source venv/bin/activate

2. The following VS Code extensions have been installed:
   - Python and Jupyter support
   - DuckDB tools and extensions
   - Git integration (GitLens)
   - Markdown support
   - Code spell checker
   - Path intellisense
   - Code runner

3. Start with the first notebook:
   code notebooks/00_setup_database.ipynb

4. Helpful keyboard shortcuts:
   - Cmd/Ctrl + Shift + P: Command palette
   - Cmd/Ctrl + P: Quick file open
   - Cmd/Ctrl + B: Toggle sidebar
   - F1: Open DuckDB database
   - Cmd/Ctrl + Shift + D: Debug view

Happy coding! 🎉
"