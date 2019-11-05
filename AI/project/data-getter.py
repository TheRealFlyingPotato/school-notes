import requests
import json
from time import sleep
URL = 'https://api.scryfall.com/cards'
data = {'cards':list()}
errors = list()

while True:
  r = requests.get(URL)
  print('\nrequesting {}'.format(URL))
  print(r.status_code)
  if r.status_code != 200:
    print("waiting...")
    sleep(60)
    continue
  JSON = r.json()
  for card in JSON['data']:
    #print('>> {} <<'.format(card['name']), end='')
    try:

      data['cards'].append({
        'name': card['name'],
        'mana_cost': card['mana_cost'],
        'cmc': card['cmc'],
        'colors': card['colors'],
        'color_identity': card['color_identity'],
        'legalities': card['legalities'],
        'type_line': card['type_line'],
        'reserved': card['reserved'],
        'colors': card['colors'],
      })
    except:
      errors.append(card['name'])
  if JSON['has_more']:
    URL = JSON['next_page']
    sleep(1)
  else:
    break

with open('cards.dat','w', encoding='utf-8') as fout:
  json.dump(data, fout, ensure_ascii=False, indent=2)
with open('errors.dat','w') as fout:
  for error in errors:
    fout.write('{}\n'.format(error))
