module LsPair
  class UnixLike
    def install_wemux
      raise NotImplementedError
    end

    def home_dir(username)
      "/home/#{username}"
    end

    def standard_group
      'adm'
    end

    def directory_service
      raise NotImplementedError
    end

    def filesystem
      Filesystem.new
    end

    def ssh_keys
      SshKeys.new
    end
  end
end
