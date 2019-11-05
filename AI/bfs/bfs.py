import sys

def markVisited(data, node):
  data[node]['_visited'] = True

def setDistance(data, node, d):
  data[node]['_distance'] = d
  
def addChildrenToQueue(data, parent, queue):
  for child in data[parent].keys():
    if child[0] == '_':
      continue
    if not data[child]['_visited']:
      queue.append(child)
      markVisited(data, child)
    ## check if the child's distance needs to be updated
    ## if so, do so and re-queue it.
    if data[child]['_distance'] > data[parent]['_distance'] + data[parent][child]:
      data[child]['_distance'] = data[parent]['_distance'] + data[parent][child]
      data[child]['_parent'] = parent
      if len(queue) == 0:
        queue.append(child)
      elif queue[-1] != child:
        queue.append(child)

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
  nodes = dict()
  for nodeName in nodeNames:
    nodes[nodeName] = {'_visited': False, '_parent': None, '_distance': 999999}
    for pair in data:
      try:
        selfInd = pair.index(nodeName)
      except:
        continue
      nodes[nodeName][pair[2-selfInd]] = int(pair[1])
  return nodes

def breadthFirstSearch(data, startN, endN):
  queue = list()
  currentNode = startN
  markVisited(data, currentNode)
  setDistance(data, currentNode, 0)
  output = [currentNode]
  addChildrenToQueue(data, currentNode, queue)
  # print(queue)
  while len(queue):
    currentNode = queue.pop()
    output.append(currentNode)
    addChildrenToQueue(data, currentNode, queue)
  # print(len(output) == len(data.keys()), output)

def showShortestPath(data, startN, endN):
  currentNode = endN
  path = [currentNode]
  while currentNode != startN:
    path.append(data[currentNode]['_parent'])
    currentNode = data[currentNode]['_parent']
  while len(path):
    print(path.pop())


if __name__ == "__main__":
  ### Sets the default paramaters to given for the assignment.
  ### Allows for other paramaters if arguments given in command line, e.g.
  ### $ python main.py [filename] [startnodename] [endnodename]
  if len(sys.argv) != 4:
    f = 'dataset.txt'
    s = 'Bucharest'
    e = 'Arad'
  else:
    f = sys.argv[1]
    s = sys.argv[2]
    e = sys.argv[3]
  dataset = generateDataset(f)
  breadthFirstSearch(dataset, s, e)
  showShortestPath(dataset, s, e)
