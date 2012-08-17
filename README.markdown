g
========

[http://github.com/jugyo/g](http://github.com/jugyo/g)

Description
--------

The Kernel.g that works like Kernel.p by using terminal-notifier or growl.

Install
--------

    gem install g

Synopsis
--------

    require 'rubygems'
    require 'g'
    
    g 'foo'
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

Requirements
--------

`terminal-notifier` or `ruby_gntp`

License
--------

(The MIT License)

Copyright (c) 2008-2012 jugyo

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
