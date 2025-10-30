Knowledge-Base Search Engine

Description:
This is a Flask-based Knowledge-Base Search Engine. Users can upload documents (PDF, CSV, Excel, PowerPoint) and ask questions. Answers are generated using Gemini LLM (Google Generative AI).

Requirements:
- Python 3.10 or higher
- Gemini API Key from Google
- Virtual environment recommended

Setup Instructions:

1. Clone or copy the project folder.
2. Create and activate a virtual environment:

   Windows:
       python -m venv venv
       venv\Scripts\activate

   Linux/Mac:
       python3 -m venv venv
       source venv/bin/activate

3. Install required packages:

   pip install -r requirements.txt

4. Create a .env file in the project root with your Gemini API key:

   GEMINI_API_KEY="your_google_gemini_api_key_here"

5. Run the Flask server:

   python app.py

6. Open your browser and visit:
   http://127.0.0.1:5000

Supported File Types:
- PDF (.pdf)
- CSV (.csv)
- Excel (.xlsx, .xls)
- PowerPoint (.pptx, .ppt) — requires python-pptx

Notes:
- Ensure the index.html file is in the same folder as app.py or inside a "templates" folder.
- For PowerPoint support, install python-pptx:
   pip install python-pptx
