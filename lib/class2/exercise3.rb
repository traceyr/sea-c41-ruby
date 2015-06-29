# 5 points
#
# If a person is 1,160,000,000 seconds old, display their age in years. As
# always, assume leap years don't exist.

age_in_seconds = 1_160_000_000

def sec_to_years(x)
  second_to_days = x / 86_400
  second_to_days / 365
end

puts sec_to_years(age_in_seconds)
