##
## KNN Test
##

# KNN class
assert("KNN#sliding_windows") do
  knn = KNN.new(2, 1)
  w = knn.sliding_windows([1, 2, 1, 2, 1, 2])
  assert_equal(5, w.length)
  assert_equal([1, 2], w[0])
end

assert("KNN#dist") do
  knn = KNN.new(2, 1)
  assert_equal(1, knn.dist([1, 1, 1], [1, 1, 2]))
end

assert("KNN#score") do
  knn = KNN.new(2, 1)
  s = knn.score([1, 2, 10, 2, 1])
  assert_equal(5, s.length)
  assert_equal(0, s[0])
end
