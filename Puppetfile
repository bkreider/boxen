# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "foreman",    "1.1.0"
github "gcc",        "2.0.1"
github "git",        "1.3.7"
github "go",         "1.0.0"
github "homebrew",   "1.5.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.3"
github "nodejs",     "3.3.0"
github "openssl",    "1.0.0"
github "phantomjs",  "2.0.2"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.7.2"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "chrome",     "1.1.2"
github "firefox",    "1.1.7"
github "vlc",        "1.0.5"
github "skype",      "1.0.8"
github "flowdock",   "1.0.0"
github "colloquy",   "1.0.0"
github "pivotalbooster", "1.0.4"
github "googledrive", "1.0.2"
github "googleearth", "1.0.0"
github "statsd",     "1.0.3"
github "tmux",       "1.0.2"
github "adium",      "1.3.0"
github "virtualbox",  "1.0.9"
#github "istatmenus4", "1.0.0"    # $16.00
github "vmware_fusion", "1.1.0"
github "wget",       "1.0.0"
github "onepassword", "1.1.0"

github "omnigraffle", "1.3.1", :repo => "bkreider/puppet-omnigraffle"
github "evernote",    "2.0.4"

github "vagrant",   "3.0.2"
github "osx",       "2.2.2"
github "dropbox",   "1.2.0"
github "handbrake", "1.0.1"
github "steam",     "1.0.1"
github "transmission","1.1.0"
github "pgadmin3",  "1.0.0"
github "menumeters",  "0.0.1", :repo => "bkreider/puppet-menumeters"

# Customize plists
mod "property_list_key",  "0.1.0",   :github_tarball => "glarizza/puppet-property_list_key"

