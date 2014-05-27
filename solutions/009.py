#!/usr/bin/env python

a = 0
b = 0
c = 0

for a in range(1, 333):
  for b in range(a, 1000):
    c = (a**2 + b**2)**0.5

    if (a + b + c) == 1000:
      print 'found pair: a={0} b={1} c={2}'.format(a, b, c)
      print a * b * c
