import requests
import json
from time import sleep

def print_setnames(names, collectornames):
  for i, name in enumerate(names):
    endChar = ['\n','\t'][i % 2]
    print('{}{}. {}'.format(['','x'][name in collectornames], i, name), end = endChar)

with open('cards-with-set-prices.dat', 'r') as fin:
  JSON = json.load(fin)
set_names = []
for card in JSON['cards']:
  for key in card['set_prices'].keys():
    if key not in set_names:
      set_names.append(key)
collector_sets = []
while True:
  print_setnames(set_names, collector_sets)
  inp = input("Set to toggle (/ q to quit):")
  if inp == 'q':
    break
  try:
    inp = int(inp)
  except:
    print('non-accepted input')
  try:
    newCollector = set_names[inp]
  except:
    print('inp outside of range')
  if newCollector in collector_sets:
    print('removing {} from collector_sets'.format(newCollector))
    collector_sets.remove(newCollector)
    print('removed successfully')
  else:
    print('adding {} to collector_sets'.format(newCollector))
    collector_sets.append(newCollector)
    print('added successfully')
with open('collector-sets.json', 'w') as fout:
  json.dump({'collector-sets' : collector_sets}, fout, ensure_ascii=False, indent=2)
print('dumped successfully to collector-sets.json. Quitting program... \n\n\n')