module Redcore
  class Encryption
    TABLE_SIZE = 210

    def initialize(client_key, server_key)
      @client_key = client_key
      @server_key = server_key
      @table = [0]

      start_seeds
    end

    def start_seeds
      t = (@server_key & 0x00000000FFFFFFFF)

      (0..TABLE_SIZE).each do |x|
        o = t
        t = ((o * 0x834E0B5F) >> 48) & 0xFFFFFFFF
        t = (t + (t >> 31)) & 0xFFFFFFFF
        t = (((o % 0x1F31D) * 0x41A7) - (t * 0xB14) + 0x7B) & 0xFFFFFFFF

        if (t > 0x7FFFFFFF)
          t = (t + 0x7FFFFFFF) & 0xFFFFFFFF
        end

        @table[i*2] = t & 0xFF
        @table[i*2 + 1] = (t >> 8) & 0xFF
      end
    end

    def encrypt

    end

    def decrypt

    end
  end
end
