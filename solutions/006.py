#!/usr/bin/env python

def sum_of_squares(n):
  squares = [i**2 for i in xrange(1, n+1)]
  return reduce(lambda x, y: x+y, squares)


def square_of_sums(n):
  nums = [i for i in xrange(1, n+1)]
  return reduce(lambda x, y: x+y, nums)**2

n = 100

ssq = sum_of_squares(n)
sqs = square_of_sums(n)
print "sum of squares: {0}, square of sums: {1}, difference: {2}".format(ssq, sqs, sqs - ssq)
