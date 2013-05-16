module LsPair
  autoload :Macosx,     'ls_pair/os/macosx'
  autoload :Linux,      'ls_pair/os/linux'
  autoload :UnixLike,   'ls_pair/os/unix_like'

  class OsSupport
    def self.determine_os
      case uname
      when 'darwin'
        Macosx.new
      when 'linux'
        Linux.new
      end
    end

    def self.uname
      `uname -s`.chomp.downcase
    end
  end
end
