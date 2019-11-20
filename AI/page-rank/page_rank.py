import copy

class Page():
  def __init__(self, name, rank, connections):
    self.name = name
    self.rank = rank
    self.connections = connections
  def __str__(self):
    return '{}\'s Rank: {}'.format(self.name, self.rank)
  def __eq__(self, other):
    return self.rank == other.rank

class Network():
  def __init__(self, names, ranks=None):
    if ranks == None:
      self.pages = {}
      for name, in names:
        self.pages[name] = Page(name, 1/len(names))
    else:
      self.pages = {}
      for i, name in enumerate(names):
        self.pages[name] = Page(name, ranks[i])

  def __str__(self):
    return '\n'.join([str(page) for _, page in self.pages.items()])
  def copy(self):
    names = []
    ranks = []
    for name, page in self.pages.items():
      names.append(name)
      ranks.append(page.rank)
    return Network(names, ranks)

def __print_app(op, pa):
  print("Old:")
  print(op)
  print("New:")
  print(pa)

def main():
  network = Network(['A', 'B', 'C'])
  oldnetwork = network.copy()
  network.pages['A'].rank = 0
  __print_app(oldnetwork, network)
  while oldnetwork != network:



if __name__ == '__main__':
  main()