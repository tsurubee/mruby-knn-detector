# mruby-knn-detector   [![Build Status](https://travis-ci.org/tsurubee/mruby-knn-detector.svg?branch=master)](https://travis-ci.org/tsurubee/mruby-knn-detector)
KNN class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'tsurubee/mruby-knn-detector'
end
```
## example
```ruby
p KNN.hi
#=> "hi!!"
t = KNN.new "hello"
p t.hello
#=> "hello"
p t.bye
#=> "hello bye"
```

## License
under the MIT License:
- see LICENSE file
