import flask
from flask import request, jsonify

app = flask.Flask(__name__)

estacoes = [
    {
        "id": 1,
        "name":"casa"
    },
    {
        "id": 2,
        "name":"trabalho"
    },
    {
        "id": 3,
        "name":"escola"
    },
]
@app.route('/', methods=['GET'])
def home():
    return '<h1> API ESTACOES</h1>'
    
@app.route('/api/v1/estacoes', methods=['GET'])
def pegarestacoes():
        return jsonify(estacoes)

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000)