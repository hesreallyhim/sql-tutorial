from setuptools import setup, find_packages

setup(
    name="sql-learning",
    version="0.1",
    packages=find_packages(),
    install_requires=[
        "jupyter",
        "notebook",
        "pandas",
    ],
    python_requires=">=3.7",
)