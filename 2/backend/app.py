from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  

@app.route('/process', methods=['POST'])
def process_string():
    data = request.get_json()
    st = data.get('text', '')
    processed = st.lower().split()
    return jsonify({
        'original': st,
        'processed': processed
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)