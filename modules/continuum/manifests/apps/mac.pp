# modules/continuum/manifests/apps/mac.pp

class continuum::apps::mac {

    include chrome
    include firefox
    include vlc
    include skype
    include flowdock
    include colloquy
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

    include omnigraffle
    #include evernote   # EULA problems auto-installing

    # doesn't work
    #include pgadmin3
}
