# SQL Learning Project

A hands-on project to learn SQL using Python, Jupyter notebooks, and DuckDB.

## Setup

There are two ways to set up this project:

### Option 1: Automated Setup (Recommended)

1. Make the setup script executable:
```bash
chmod +x setup.sh
```

2. Run the setup script:
```bash
./v2/setup.sh
```

This will:
- Create a Python virtual environment
- Install all dependencies
- Set up VS Code configuration
- Create necessary .gitignore rules

### Option 2: Manual Setup

1. Create and activate a virtual environment:
```bash
python3 -m venv venv
source venv/bin/activate
```

2. Install the requirements:
```bash
pip install -r ./v2/requirements.txt
```

3. Run the setup notebook:
```bash
jupyter notebook ./v2/notebooks/00_setup_database.ipynb
```

## Project Structure

- `data/` - Contains the DuckDB database
- `notebooks/` - Jupyter notebooks with SQL tutorials
  - `00_setup_database.ipynb` - Creates and populates the database
  - `01_basic_queries.ipynb` - Learn basic SQL queries
  - `02_joins_and_relationships.ipynb` - Advanced SQL topics

## Requirements

- Python >= 3.7
- See [requirements.txt](./v2/requirements.txt) for full dependencies
