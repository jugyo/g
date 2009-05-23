require 'rubygems'
require 'ruby-growl'
require 'pp'

module Kernel
  GROWL = Growl.new "localhost", $0, ["Kernel.g"]
  def g(*args)
    args.each { |i| GROWL.notify "Kernel.g", $0, i.pretty_inspect }
    if args.empty?
      nil
    elsif args.size == 1
      args.first
    else
      args
    end
  end
end
