# 5 points
#
# If a person is 1,160,000,000 seconds old, display their age in years. As
# always, assume leap years don't exist.

ageInSeconds = 1160000000

def secToYears(x)
  secondToDays = x / 86400
  return secondToDays / 365
end

puts secToYears(ageInSeconds)
