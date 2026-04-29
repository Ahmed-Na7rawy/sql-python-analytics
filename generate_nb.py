import json

nb = {
 "cells": [
  {
   "cell_type": "markdown",
   "metadata": {},
   "source": [
    "# Olist Analysis\n",
    "This notebook was generated to fix the editor error."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": None,
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas as pd\n",
    "import seaborn as sns\n",
    "import matplotlib.pyplot as plt\n",
    "import sqlite3\n",
    "import os\n",
    "\n",
    "db_path = os.path.abspath('../../data/olist.sqlite')\n",
    "conn = sqlite3.connect(db_path)\n",
    "print('Connected!')"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}

with open('notebooks/sql_python_analysis.ipynb', 'w', encoding='utf-8') as f:
    json.dump(nb, f, indent=4)

print("Generated notebooks/sql_python_analysis.ipynb")
