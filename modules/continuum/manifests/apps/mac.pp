# modules/continuum/manifests/apps/mac.pp

class continuum::apps::mac {

    include chrome
    include firefox
    include vlc
    include skype
    include flowdock
    include pivotalbooster
    include dropbox
    include steam
    include handbrake
    include googledrive
    include googleearth
    include statsd
    include tmux
    include adium
    include virtualbox
    include vagrant
    #include istatmenus4  - paid app
    include vmware_fusion
    include wget
    include onepassword

    include omnigraffle::pro
    include evernote   

    include pgadmin3
}
