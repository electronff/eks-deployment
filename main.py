import json
import os

from flask import Flask
from flask import request
app = Flask(__name__)
#print(os.environ)
os.environ["RESPONSE"]='success'
RESPONSE = os.environ["RESPONSE"]

@app.route("/")
def homepage():
    msg = {'message': 'This is Home for me...'}
    return json.dumps(msg)


@app.route("/aminu")
def myname():
    msg = {'message': 'I am Aminu...'}
    return json.dumps(msg)



@app.route("/status")
def root():
	ret = {
		'result': RESPONSE
	}

	return json.dumps(ret)

if __name__ == "__main__":
	app.run(debug=True, host='0.0.0.0', port=8080)

# # to be deleted

#import web

#if __name__ == '__main__':
#    web.app.run(debug=True, host='0.0.0.0', port=8080)
	