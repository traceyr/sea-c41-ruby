#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 3600
  end
end

class String
  def indent(amount = 2)
    ' ' * amount + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    num = self
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
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
