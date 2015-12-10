module Ruboty
  module GoodNight
    module AdaptCallback
      BRAIN_NAMESPACE = 'ruboty-goodnight'

      def adapt
        super

        if robot.brain.data[BRAIN_NAMESPACE]
          room.reply('おはようございます')
        end
      end

      def room
        Ruboty::Message.new(robot.brain.data[BRAIN_NAMESPACE].merge(robot: robot))
      end
    end
  end

  Robot.prepend(GoodNight::AdaptCallback)
end
