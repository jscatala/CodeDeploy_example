from flask import Flask

app = Flask(__name__)

from bayeapp.api.routes import mod
app.register_blueprint(api.routes.mod, url_prefix='/todo/api/v0.1')
