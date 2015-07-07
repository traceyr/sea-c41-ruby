#!/usr/bin/env ruby
#
# 5 points
#
# Eventually, someone thought it would be terribly clever if putting a smaller
# number before a larger one meant you had to subtract the smaller one. As a
# result of this development, you must now suffer.
#
# Rewrite your previous program so that, when passed any integer between 1 and
# 1000, it returns a string containing the proper modern Roman numeral. In other
# words:
#
#   $ ruby exercise5.rb 9
#   IX
#
# TIP #1: Here's a mapping of Roman to Arabic numerals:
#
#   1000 = M
#    900 = CM
#    500 = D
#    400 = CD
#    100 = C
#     90 = XC
#     50 = L
#     40 = XL
#     10 = X
#      9 = IX
#      5 = V
#      4 = IV
#      1 = I
#
# TIP #3: You only need to change the `modern_roman_numeral` method.

# rubocop:disable MethodLength
def modern_roman_numeral(num)
  roman = ''

  m = num / 1000
  roman = 'M' * m
  num -= (m * 1000)

  cm = num / 900
  roman += 'CM' * cm
  num -= (cm * 900)

  d = num / 500
  roman += 'D' * d
  num -= (d * 500)

  cd = num / 400
  roman += 'CD' * cd
  num -= (cd * 400)

  c = num / 100
  roman += 'C' * c
  num -= (c * 100)

  xc = num / 90
  roman += 'XC' * xc
  num -= (xc * 90)

  l = num / 50
  roman += 'L' * l
  num -= (l * 50)

  xl = num / 40
  roman += 'XL' * xl
  num -= (xl * 40)

  x = num / 10
  roman += 'X' * x
  num -= (x * 10)

  ix = num / 9
  roman += 'IX' * ix
  num -= (ix * 9)

  v = num / 5
  roman += 'V' * v
  num -= (v * 5)

  iv = num / 4
  roman += 'IV' * iv
  num -= (iv * 4)

  roman + 'I' * num
end

input = ARGV[0].to_i

abort 'Usage: exercise5.rb [1-1000]' unless input.between?(1, 1000)

puts modern_roman_numeral(input)
