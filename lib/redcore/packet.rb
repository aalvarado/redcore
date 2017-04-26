module Redcore
  class Packet
    include Constants

    def initialize(data, reliable = false)
      @data = data
      @reliable = reliable

      raise ArgumentError, 'Packet greater than MAX_PACKET_SIZE' if size > MAX_PACKET_SIZE
    end

    def reliable?
      @reliable
    end

    def size
      reliable? ? @data.size + 6 : @data.size
    end
  end
end
