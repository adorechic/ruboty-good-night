module Ruboty
  module GoodNight
    module AdaptCallback
      BRAIN_NAMESPACE = 'ruboty-goodnight'

      def adapt
        super

        if brain.data[BRAIN_NAMESPACE]
          room.reply('おはようございます')
        end
      end

      def room
        Ruboty::Message.new(brain.data[BRAIN_NAMESPACE].merge(robot: self))
      end
    end
  end

  Robot.prepend(GoodNight::AdaptCallback)
end
