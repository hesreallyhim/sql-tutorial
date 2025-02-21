from setuptools import setup, find_packages

setup(
    name="sql-learning-v2",
    version="0.2.0",
    packages=find_packages(),
    install_requires=[
        "jupyter",
        "notebook",
        "pandas",
        "duckdb",
        "ipykernel",
        "matplotlib",
        "seaborn"
    ],
    python_requires=">=3.7",
    description="Learn SQL with DuckDB - Interactive Tutorial Series",
    author="SQL Learning Team",
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Education",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: 3.9",
        "Programming Language :: Python :: 3.10",
    ],
)