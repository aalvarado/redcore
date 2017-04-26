module Redcore
  module Constants
    EVENT_TICK = 1
    EVENT_TYPES = {
    }

    MAX_PACKET_SIZE = 512
    RETRANSMIT_INTERVAL = 50

    SERVER_NORMAL_PACKET_TYPES = {
      '0x01' => nil,
      '0x02' => :arena_joined,
      '0x03' => :player_entered,
      '0x04' => :player_left,
      '0x05' => :player_position,
      '0x06' => :player_death,
      '0x07' => :chat_message,
      '0x08' => :prize,
      '0x09' => :score_update,
      '0x0A' => :password_packet_response,
      '0x0B' => :soccer_goal,
      '0x0C' => nil,
      '0x0D' => :freq_change,
      '0x0E' => :turret,
      '0x0F' => :arena_settings,
      '0x10' => :file_arrived,
      '0x11' => nil,
      '0x12' => :flag_position,
      '0x13' => :flag_claimed,
      '0x14' => :flag_victory,
      '0x15' => nil,
      '0x16' => :flag_dropped,
      '0x17' => nil,
      '0x18' => :sync_request,
      '0x19' => :file_request,
      '0x1A' => :score_reset,
      '0x1B' => nil,
      '0x1C' => nil,
      '0x1D' => :ship_freq_change,
      '0x1E' => nil,
      '0x1F' => :player_banner,
      '0x20' => nil,
      '0x21' => nil,
      '0x22' => :turf_flag_update,
      '0x23' => :flag_reward,
      '0x24' => nil,
      '0x25' => nil,
      '0x26' => nil,
      '0x27' => nil,
      '0x28' => :player_position,
      '0x29' => :map_information,
      '0x2A' => :compressed_map_file,
      '0x2B' => nil,
      '0x2C' => :koth_reset,
      '0x2D' => nil,
      '0x2E' => :ball_position,
      '0x2F' => :arena_list,
      '0x30' => nil,
      '0x31' => :login,
    }

    SERVER_SPECIAL_PACKET_TYPES = {
      '0x01' => :encryption_request,
      '0x02' => :encryption_response,
      '0x03' => :reliable_message,
      '0x04' => :reliable_ack,
      '0x05' => :sync_request,
      '0x06' => :sync_response,
      '0x07' => :order_disconnect,
      '0x08' => :chunk,
      '0x09' => :chunk_end,
      '0x0A' => :big_chunk,
      '0x0B' => nil,
      '0x0C' => nil,
      '0x0D' => nil,
      '0x0E' => :cluster,
    }
  end
end
