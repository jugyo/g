require 'pp'

module Kernel
  def self._g_function(&block)
    @_g_function = block if block
    @_g_function
  end

  def g(*args)
    messages = args.dup

    if messages.empty?
      if block_given?
        messages << yield(self)
      else
        messages << self
      end
    end

    messages.each do |i|
      text = i.is_a?(String) ? i : i.pretty_inspect
      if Kernel._g_function
        Kernel._g_function.call($0, 'g', text)
      else
        p text
      end
    end

    if args.empty?
      self
    elsif args.size == 1
      args.first
    else
      args
    end
  end
end

catch(:break) do
  %w(terminal-notifier ruby_gntp).each do |lib|
    begin
      require lib
      require "g/#{lib}"
      throw :break
    rescue LoadError
    end
  end
  warn 'Please install `terminal-notifier` or `ruby_gntp`.'
end
