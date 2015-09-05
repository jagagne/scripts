from twython import Twython

APP_KEY = '1DOAH0C0fVKff68X1n6E1AIQi'
APP_SECRET = 'f3i8ObzTMYdeJBuPv4kQe1gBHbl7GaALQWlP7tmKPu1EqBkjC9'
OATH_TOKEN = '14096653-l4MKvzEq2sDJNk0XQiE2aYvy2N3XIFBiDxDE1rnBW'
OATH_SECRET = 'Z9kvZR13PN53gzs7Sb6pLvF8ZjEagYDishqKVZtVGEjIt'

twitter = Twython(APP_KEY, APP_SECRET, OATH_TOKEN, OATH_SECRET)
twitter.update_status(status='get me moar mac&cheese please!')
#twitter.verify_credentials()
