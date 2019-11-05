import json

with open('cards-with-set-prices.dat') as fin:
  inJSON = json.load(fin)

def getTypeLine(card):
  s = card['type_line']
  if '-' not in s:
    return s
  return s.split('-')[0]

types = list()
for card in inJSON['cards']:
  input('{}, {}'.format(card,getTypeLine(card)))