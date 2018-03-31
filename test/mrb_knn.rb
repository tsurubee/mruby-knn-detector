##
## KNN Test
##

assert("KNN#hello") do
  t = KNN.new "hello"
  assert_equal("hello", t.hello)
end

assert("KNN#bye") do
  t = KNN.new "hello"
  assert_equal("hello bye", t.bye)
end

assert("KNN.hi") do
  assert_equal("hi!!", KNN.hi)
end
