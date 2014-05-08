maintainer 'Greg Fitzgerald'
maintainer_email 'greg@gregf.org'
license 'Apache 2.0'
description 'Installs graphicsmagick'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1'
name 'graphicsmagick'

recipe 'graphicsmagick', 'Installs graphicsmagick.'

%w(debian ubuntu centos fedora).each do |os|
  supports os
end
