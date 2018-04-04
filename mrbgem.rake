MRuby::Gem::Specification.new('mruby-knn-detector') do |spec|
  spec.license = 'MIT'
  spec.authors = 'tsurubee'
  spec.version = '0.0.1'
  spec.summary = 'Anomaly detector based on K-Nearest Neighbor'
  spec.add_dependency "mruby-math", core: "mruby-math"
end
