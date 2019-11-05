import json

with open('cards.dat', 'r') as fin:
  JSON = json.load(fin)
  newJSON = {'cards':list()}
  for card in JSON['cards']:
    if card not in newJSON['cards']:
      print('adding {}'.format(card['name']))
      newJSON['cards'].append(card)
    else:
      print('skipping {}'.format(card['name']))
    
with open('cards-set.dat', 'w') as fout:
  json.dump(newJSON, fout, ensure_ascii=False, indent=2)