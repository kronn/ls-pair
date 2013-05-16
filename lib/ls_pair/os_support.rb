module LsPair
  autoload :Macosx,    'ls_pair/os/macosx'
  autoload :UnixLike,  'ls_pair/os/unix_like'

  class OsSupport
    def self.determine_os
      Macosx.new
    end
  end
end
