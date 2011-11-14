require 'rubygems'
require 'ruby_gntp'
require 'pp'

$g_host ||= "localhost"
$g_priority ||= 0
$g_sticky ||= true

module Kernel
  def g(*args, &block)
    # growl = Growl.new $g_host, 'g', [$0]

    args.push(block) if block

    messages =
      if args.empty?
        ['g!']
      else
        args.map { |i| i.pretty_inspect }
      end

    # messages.each { |i| growl.notify $0, 'g', i, $g_priority, $g_sticky }
    messages.each { |i| GNTP.notify :app_name => $0, :title => 'g', :text => i, :sticky => $g_sticky }

    if args.empty?
      nil
    elsif args.size == 1
      args.first
    else
      args
    end
  end
end
