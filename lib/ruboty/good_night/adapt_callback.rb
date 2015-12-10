module Ruboty
  module GoodNight
    module AdaptCallback
      BRAIN_NAMESPACE = 'ruboty-goodnight'

      def adapt
        if brain.data[BRAIN_NAMESPACE]
          Thread.new {
            sleep 10
            room.reply('おはようございます')
          }
        end

        super
      end

      def room
        Ruboty::Message.new(brain.data[BRAIN_NAMESPACE].merge(robot: self))
      end
    end
  end

  Robot.prepend(GoodNight::AdaptCallback)
end
