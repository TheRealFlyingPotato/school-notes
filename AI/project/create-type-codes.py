import json

with open('cards-with-set-prices.dat') as fin:
  inJSON = json.load(fin)

def getTypeLine(card):
  s = card['type_line']
  if '-' in s:
    s = s.split('-')[0].strip()
  if '//' in s:
    s = s.split('//')[0].strip()
  removes = ['Tribal', 'Snow', 'World', 'Token']
  for r in removes:
    if r in s:
      s = s.replace(r, '').strip()
  if 'Land Creature' == s:
    return 'Creature'
  if 'Legendary' in s:
    if 'Creature' not in s:
      s = s.replace('Legendary', '').strip()
  while '  ' in s:
    s = s.replace('  ', ' ')
  return s

typeL = list()
typeD = dict()
for card in inJSON['cards']:
  legalityCount = 0
  for key in card['legalities'].keys():
    if card['legalities'][key] in ['legal', 'restricted']:
      legalityCount += 1
  if legalityCount == 0:
    continue
  typeL.append(getTypeLine(card))
typeS = set(typeL)
for i, k in enumerate(sorted(typeS)):
  typeD[k] = i
  
with open('type-codes.json', 'w') as fout:
  json.dump(typeD, fout, ensure_ascii=False, indent=2)
