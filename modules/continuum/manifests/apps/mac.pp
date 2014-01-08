# modules/continuum/manifests/apps/mac.pp

class continuum::apps::mac {

    include chrome
    include firefox
    include vlc
    include skype
    include flowdock
    include pivotalbooster
    include googledrive
    include googleearth
    include statsd
    include tmux
    include adium
    include virtualbox
    #include istatmenus4  - paid app
    include vmware_fusion
    include wget
    include onepassword

    # Java is large and is outdated if you have it already installed
    #include java

    include omnigraffle::pro
    include evernote   

    include vagrant
    include dropbox
    include handbrake
    include steam
    include transmission   

    include pgadmin3

    include wireshark
    include googlevoiceandvideoplugin
}
