import json
import csv

with open('set-dates.json', 'r') as fin:
  setDates = json.load(fin)
with open('cards-with-set-prices.dat','r') as fin:
  inJSON = json.load(fin)
with open('type-codes.json','r') as fin:
  typeCodes = json.load(fin)


def getDateCode(n):
  return 2019 - int(setDates[n].split('-',)[0])
def isReserved(card):
  try:
    return int(card['reserved'])
  except:
    return None
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
def getTypeCode(card):
  return typeCodes[getTypeLine(card)]
def isCommander(card):
  if card['legalities']['commander'] != 'legal':
    return 0
  typeLine = getTypeLine(card)
  if 'Legendary' in typeLine and 'Creature' in typeLine:
    return 1
  else:
    return 0

outputList = list()
print('Assembling datapoints...')
for card in inJSON['cards']:
  if card['reserved']:
    print('skipping {} because of reserved list'.format(card['name']))
    continue
  # print(">> {} << ".format(card['name']))
  ### CMC, Color Identity, LegalityCount, BestSetDate
  ### TypeCode, BestPrice
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
  # l.append(isReserved(card))
  # if isReserved(card) == None:
  #   continue
  l.append(getTypeCode(card))
  #l.append(isCommander(card))
  l.append(bestPrice)
  outputList.append(l)

print('Writing to dataset.csv...')
with open('dataset.csv', 'w', newline='') as fout:
  employee_writer = csv.writer(fout, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
  for datapoint in outputList:
    employee_writer.writerow(datapoint)
print('Complete!\n\n')
