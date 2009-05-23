require 'rubygems'
require 'ruby-growl'
require 'pp'

module Kernel
  GROWL = Growl.new "localhost", $0, ["Kernel.g"]
  def g(*args)
    messages =
      if args.empty?
        [nil.pretty_inspect]
      else
        args.map { |i| i.pretty_inspect }
      end

    messages.each { |i| GROWL.notify "Kernel.g", $0, i }

    if args.empty?
      nil
    elsif args.size == 1
      args.first
    else
      args
    end
  end
end
