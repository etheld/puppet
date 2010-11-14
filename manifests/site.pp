import "classes/*.pp"
#import "defines/*.pp"

#$server = "puppet.example.com"
#$fileserver = "puppet://gwelican.eu/global/"
filebucket { main: server => puppet }

node metamorf {
  info('gwelican.eu')
  include gentoo::etc::portage
  include upgrade::portageflags
  include upgrade::profile::web
  include upgrade::profile::media
  include upgrade::profile::rtorrent
  include upgrade::profile::utorrent
  include upgrade::profile::ftp
  include upgrade::profile::svn
  include upgrade::profile::git
  include upgrade::profile::backup-server
  include upgrade::base::additionals
}

# ViM modeline {{{1
# vi:foldmethod=marker:foldenable:foldlevel=0
