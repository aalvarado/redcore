require 'celluloid/current'
require 'celluloid/io'

module Redcore
  class Client
    include Celluloid::IO
    include Constants

    finalizer :shutdown

    attr_reader :host, :port, :data

    def initialize(host, port)
      @host = host
      @port = port
      @socket = UDPSocket.new
      @socket.bind host, port
    end

    def send_message msg
      @socket.send msg.encode, 0, host, port
      @data = @socket.recvfrom(MAX_PACKET_SIZE)
    end
  end
end
