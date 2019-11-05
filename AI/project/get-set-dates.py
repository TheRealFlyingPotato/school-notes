import json
with open('sets.json', 'r') as fin:
  inJSON = json.load(fin)
setDict = dict()
for _set in inJSON['data']:
  setDict[_set['name']] = _set['released_at']
with open('set-dates.json', 'w') as fout:
  json.dump(setDict, fout, ensure_ascii=False, indent=2)