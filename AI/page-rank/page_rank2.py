def printNetworks(old, new):
  print('Old:')
  printNetwork(old)
  print('New:')
  printNetwork(new)

def printNetwork(n):
  for i, name in enumerate(['A', 'B', 'C']):
    print('{}\'s Rank: {}'.format(name, n[i]))

def diffRanks(r1, r2):
  for i, r in enumerate(r1):
    if round(r, 6) != round(r2[i], 6):
      return True
  return False

def main():
  ### damping factor
  DAMPING = .7
  N = 3
  ### 0: no connection from
  ### 1: connection from
  network = [
    [0, 1, 0],  # A
    [1, 0, 1],  # B
    [0, 1, 0]   # C
  ]

  ### Num of paths each page has out: A, B, C
  pathsOut = [1, 2, 1]

  ### Initialize ranks at 1/n (1/3)
  ranks = [1/N] * N

  count = 0
  oldRanks = ranks[:]
  oldRanks[0] += 1 # just to make the while loop run without any shenanigans
  printNetworks(oldRanks, ranks)
  while diffRanks(oldRanks, ranks): #areEqualRanks(oldRanks, ranks): ### continue until no change between iterations
    oldRanks = ranks[:]
    ### for each page in the network
    for currentPage, fromConnections in enumerate(network):
      newRank = (1-DAMPING)/N
      ### for each other page that links to current page
      for numFrom, fromPath in enumerate(fromConnections):
        if fromPath: ### only add to new rank if actually connected from
          newRank += DAMPING * oldRanks[numFrom]/pathsOut[numFrom] ### pretty formula
      ranks[currentPage] = newRank
    print("Iteration: {}".format(count))
    # printNetworks(oldRanks, ranks)
    # input('')
    count += 1
    if count == 10000000:
      print('Failed to find in reasonable time')
      break
  print('\n\nAlgorithm Completed in {} iterations'.format(count-1))
  printNetwork(ranks)
  print("Check (should be near 1): {}".format(sum(ranks)))


if __name__ == '__main__':
  main()
