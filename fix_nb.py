import json
import uuid

def fix_notebook(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        nb = json.load(f)
    
    # Ensure nbformat is at least 4.5 if we use IDs
    nb['nbformat'] = 4
    nb['nbformat_minor'] = 5
    
    for cell in nb['cells']:
        if 'id' not in cell:
            # Generate a short unique ID
            cell['id'] = str(uuid.uuid4())[:8]
            
    with open(file_path, 'w', encoding='utf-8') as f:
        json.dump(nb, f, indent=1, ensure_ascii=False)
    
    print(f"Fixed notebook: {file_path}")

if __name__ == "__main__":
    fix_notebook('notebooks/sql_python_analysis.ipynb')
