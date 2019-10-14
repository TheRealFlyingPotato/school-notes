import json
import sys

def generateDataset(fname):
  with open(fname, 'r') as fin:
    data = fin.read().split('\n')
  nodeNames = list()
  for i,pair in enumerate(data):
    pair = pair.split(',')
    data[i] = pair
    nodeNames.append(pair[0])
    nodeNames.append(pair[2])
  nodeNames = set(nodeNames)
  # print(sorted(nodeNames))
  # print(data)
  nodes = dict()
  for nodeName in nodeNames:
    nodes[nodeName] = dict()
    for pair in data:
      try:
        selfInd = pair.index(nodeName)
      except:
        continue
      # otherName = pair[2-selfInd]
      nodes[nodeName][pair[2-selfInd]] = int(pair[1])
  with open('json_outs.txt','w') as fout:
    json.dump(nodes, fout)
  return nodes

def breadthFirstSearch(data, startN, endN):
  pass    

if __name__ == "__main__":
  if len(sys.argv) != 4:
    f = 'dataset.txt'
    s = 'Bucharest'
    e = 'Arad'
  dataset = generateDataset(f)
  breadthFirstSearch(dataset, s, e)
