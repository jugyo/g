$:.unshift File.dirname(__FILE__) + '/../lib'
require 'g'

g 'foo', 'bar'
g 1
g self
g %w(foo bar)
g ({:a=>"aaaaaaaaaaaaaaaaaa",
   :b=>"bbbbbbbbbbbbbbbbbbb",
   :c=>
    ["cccccccccccccccc",
     "CCCCCCCCCCCCCCCCC",
     "c c c c c ",
     "C C C C C C C C C "]})
