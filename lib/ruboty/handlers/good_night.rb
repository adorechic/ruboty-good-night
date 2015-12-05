module Ruboty
  module Handlers
    class GoodNight < Base
      on /おやすみ/, name: 'greet', description: 'greet to ruboty'

      def greet(message)
        message.reply('まだ寝ないよ！')
      end
    end
  end
end
