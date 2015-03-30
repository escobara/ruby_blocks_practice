scores = [83, 71, 92, 64, 98, 87, 75, 69, 34, 432, 55, 45, 54, 32, 534, 432]

high_scores = scores.select {|i| i > 80 }
low_scores = scores.reject {|i| i > 80 }
p high_scores
p low_scores
scores.any? {|i| i < 70 }
scores.detect { |i| i < 70  }

# Methods Covered
# select, reject, detect, any?

scores.chunk {|n| n.even? }.each { |e, ary| p [e, ary] }
# [false, [83, 71]]
# [true, [92, 64, 98]]
# [false, [87, 75, 69]]
# [true, [34, 432]]
# [false, [55, 45]]
# [true, [54, 32, 534, 432]]
scores.chunk {|n| n.odd? }.each { |e, ary| p [e, ary] }
# [true, [83, 71]]
# [false, [92, 64, 98]]
# [true, [87, 75, 69]]
# [false, [34, 432]]
# [true, [55, 45]]
# [false, [54, 32, 534, 432]]