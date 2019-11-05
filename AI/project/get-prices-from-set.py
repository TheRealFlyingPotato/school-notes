import requests
import json
from time import sleep

with open('errors-get-prices-from-set.dat', 'w') as fout:
  fout.write('')
with open('cards-set.dat', 'r') as fin:
  JSON = json.load(fin)
newJSON = {'cards': list()}
for card in JSON['cards']:
  URL = 'https://api.scryfall.com/cards/search?unique=prints&q=!"{}"'.format(card['name'])
  while True:
    print('\nstarting request: {}'.format(URL))
    r = requests.get(URL)
    print('response code: {}'.format(r.status_code))
    if r.status_code == 404:
      with open('errors-get-prices-from-set.dat', 'a') as fout:
        fout.write('{}\n'.format(card['name']))
      break
    if r.status_code == 200:
      break
    print("waiting...")
    sleep(60)
  if r.status_code == 404:
    continue
  allPrintings = r.json()['data']
  card['set_prices'] = {}
  for printing in allPrintings:
    if printing['set_type'] not in ['treasure_chest', 'funny', 'token', 'memorabilia']:
      card['set_prices'][printing['set_name']] = printing['prices']['usd']
  newJSON['cards'].append(card)
with open('cards-with-set-prices.dat', 'w') as fout:
  json.dump(newJSON, fout, ensure_ascii=False, indent=2)