module Kernel
  _g_function do |app_name, title, text|
    GNTP.notify :app_name => app_name, :title => title, :text => text
  end
end
