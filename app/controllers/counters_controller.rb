class CountersController < ApplicationController

    protect_from_forgery except: [:increase, :decrease]

    def index
        max_seats = 100 
        counter = Counter.last || Counter.create(count: 0)
        @congestion_rate = (counter.count.to_f / max_seats * 100).floor # 小数点以下切り捨て
        # @congestion_rate = 30
    end

    def increase
      counter = Counter.last || Counter.create(count: 0)
      counter.update(count: counter.count + 1)
    end
  
    def decrease
      counter = Counter.last || Counter.create(count: 0)
      counter.update(count: counter.count - 1)
    end
end
  