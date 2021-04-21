loop = int(input())
ls_s = sorted([input() for i in range(0,loop) ],key = lambda s : len(s))
print('\n'.join(ls_s))
