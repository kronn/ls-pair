module LsPair
  class Macosx < UnixLike
    def install_wemux
      'brew install wemux'
    end

    def home_dir(username)
      "/Users/#{username}"
    end

    def standard_group
      'staff'
    end

    def directory_service
      DirectoryService.new
    end
  end
end
