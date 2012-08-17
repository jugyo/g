module Kernel
  _g_function do |app_name, title, text|
    TerminalNotifier.notify(text, :title => title)
  end
end
