module LsPair
  class Linux < UnixLike
    def install_wemux
      cmd = [
        'git clone git://github.com/zolrath/wemux.git /usr/local/share/wemux',
        'ln -s /usr/local/share/wemux/wemux /usr/local/bin/wemu',
        'cp /usr/local/share/wemux/wemux.conf.example /usr/local/etc/wemux.con'
      ].join(" && ")

      system cmd
    end

    def directory_service
    end
  end
end
