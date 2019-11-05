import json

with open('set-dates.json', 'r') as fin:
  setDates = json.load(fin)
with open('cards-with-set-prices.dat') as fin:
  inJSON = json.load(fin)


def getDateCode(n):
  return 2019 - int(setDates[n].split('-',)[0])
def isReserved(card):
  try:
    return int(card['reserved'])
  except:
    return -1
def getTypeLine(card):
  s = card['type_line']
  if '—' not in s:
    return s
  return s.split('—')[0]

outputList = list()
for card in inJSON['cards']:
  print(">> {} << ".format(card['name']))
  ### CMC, Color Identity, LegalityCount, BestSetDate, Reserved, BestPrice
  l = [
    card['cmc'],
    len(card['color_identity']),
  ]
  ################## getting legality count ######################
  legalityCount = 0
  for key in card['legalities'].keys():
    if card['legalities'][key] in ['legal', 'restricted']:
      legalityCount += 1
  if legalityCount == 0:
    # print(card['name'])
    continue
  l.append(legalityCount)
  ################## getting best price ###########################
  bestPrice = 99999
  for key, val in card['set_prices'].items():
    try:
      float(val)
    except:
      continue
    if float(val) < bestPrice:
      bestPrice = float(val)
      bestSet = key
      # input('{}\n{}\n{}\n\n'.format(card['name'],bestPrice,bestSet))
  if bestPrice == 99999:
    continue
  l.append(getDateCode(bestSet))
  l.append(isReserved(card))

  l.append(bestPrice)

  if isReserved(card) == -1:
    continue
  if isReserved(card):
    input(l)
  

  
    
