# SQL Learning with DuckDB - Version 2

This is the DuckDB version of the SQL learning project. DuckDB is a high-performance analytical database system that's perfect for learning SQL and working with data.

## Setup Instructions

1. Make the setup script executable:
```bash
chmod +x setup.sh
```

2. Run the setup script:
```bash
./setup.sh
```

3. Install the required packages:
```bash
pip install -r requirements.txt
```

## What's Changed from v1?

- Switched from SQLite to DuckDB
- Added timestamp columns for better data tracking
- Improved schema with additional indexes
- Added email field to users table
- Split genres into a separate table for better normalization
- Added bio fields for actors and directors

## Directory Structure

```
v2/
├── data/
│   ├── entertainment.db
│   └── init_db.sql
├── notebooks/
│   ├── 00_setup_database.ipynb
│   ├── 01_basic_queries.ipynb
│   └── ...
├── requirements.txt
├── setup.py
└── setup.sh
```

The notebooks have been updated to use DuckDB instead of SQLite, but all the SQL concepts remain the same.