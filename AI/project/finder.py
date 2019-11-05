with open ('cards-with-set-prices.dat') as fin:
    for i,line in enumerate(fin):
        if '\u2014' in line:
            print i, repr(line)
