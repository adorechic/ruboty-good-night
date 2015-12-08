module Ruboty
  module Handlers
    class GoodNight < Base
      BRAIN_NAMESPACE = 'ruboty-goodnight'

      on /おやすみ/, name: 'greet', description: 'greet to ruboty'

      def greet(message)
        save(message)
        message.reply('まだ寝ないよ！')
      end

      private

      def save(message)
        room = message
      end

      def room
        robot.brain.data[BRAIN_NAMESPACE]
      end
    end
  end
end
