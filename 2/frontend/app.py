from flask import Flask, render_template, request, jsonify
import requests
import os

app = Flask(__name__)

BACKEND_URL = os.getenv('BACKEND_URL', 'http://backend-service:8080')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/process', methods=['POST'])
def process():
    data = request.get_json()
    try:
        response = requests.post(f'{BACKEND_URL}/process', json=data, timeout=5)
        return jsonify(response.json())
    except requests.exceptions.RequestException as e:
        app.logger.error(f"Error: {str(e)}")
        return jsonify({'error': 'unavailable'}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)