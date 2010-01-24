require 'digest/md5'
module MD5
  def self.new(packet)
    Digest::MD5.new.update packet
  end
end
