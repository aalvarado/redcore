module Redcore
  class Stack
    def tick
      Time.now.strftime('%s%3N')
    end

    def tick_diff(t1, t2)
      t1 - t2
    end
  end
end
