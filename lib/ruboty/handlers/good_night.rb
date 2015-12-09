module Ruboty
  module Handlers
    class GoodNight < Base
      BRAIN_NAMESPACE = 'ruboty-goodnight'

      on /おやすみ/, name: 'greet', description: 'greet to ruboty'

      def initialize(*args)
        super
        if room
          room.reply('おはようございます')
          trap_message(room)
        end
      end

      def greet(message)
        save(message)
        message.reply('まだ寝ないよ！')
      end

      private

      def save(message)
        robot.brain.data[BRAIN_NAMESPACE] = message
        trap_message(message)
      end

      def room
        robot.brain.data[BRAIN_NAMESPACE]
      end

      def trap_message(message)
        Signal.trap('TERM') do
          message.reply('おやすみ〜')
          Process.kill 'QUIT', Process.pid
        end
      end
    end
  end
end
