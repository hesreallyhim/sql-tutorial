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

# SQLite
*.db
*.sqlite3

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
    "python.linting.pylintEnabled": true
}
EOL
fi

# Print success message and next steps
echo "
✨ Setup complete! ✨

To start using the project:

1. Make sure your virtual environment is activated:
   source venv/bin/activate

2. Install VS Code extensions (recommended):
   - Python (ms-python.python)
   - Jupyter (ms-toolsai.jupyter)
   - SQLite Viewer (qwtel.sqlite-viewer)

3. Start with the first notebook:
   code notebooks/00_setup_database.ipynb

4. If you're new to VS Code, here are some helpful keyboard shortcuts:
   - Cmd/Ctrl + Shift + P: Command palette
   - Cmd/Ctrl + P: Quick file open
   - Cmd/Ctrl + B: Toggle sidebar

Happy coding! 🎉
"