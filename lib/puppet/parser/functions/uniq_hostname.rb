require 'ipaddr'

# uniq_hostname('basename') returns 'basename' + the integer
# representation of the host's ip address
module Puppet::Parser::Functions
  newfunction(:uniq_hostname, :type => :rvalue) do |args|
    "#{args[0]}#{IPAddr.new(lookupvar('ipaddress')).to_i}"
  end
end
