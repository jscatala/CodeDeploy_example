from flask import Blueprint

mod = Blueprint('api', __name__)

@mod.route('/welcome')
def welcome():
    return '{"result": "Welcome to the API"}'

@mod.route('/status')
def status():
    return 'OK!'
