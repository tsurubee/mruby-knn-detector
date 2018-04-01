# mruby-knn-detector   [![Build Status](https://travis-ci.org/tsurubee/mruby-knn-detector.svg?branch=master)](https://travis-ci.org/tsurubee/mruby-knn-detector)
Anomaly detection based on K-Nearest Neighbor (KNN)
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
$ mruby/bin/mirb
mirb - Embeddable Interactive Ruby Shell

> knn = KNN.new(2, 1)  #(Window size, Number of neighbors)
 => #<KNN:0xdc0fa0 @k=1, @w=2>
> data = [1, 2, 10, 2, 1]
 => [1, 2, 10, 2, 1]
> knn.score(data)
 => [0, 1.4142135623731, 8.0622577482985, 8.0622577482985, 1.4142135623731]
```
The input 'data' must be one-dimensional array-like object containing a sequence of values.  
The output is Array with the same size as input data.

## License
under the MIT License:
- see LICENSE file
