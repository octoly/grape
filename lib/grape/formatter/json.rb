module Grape
  module Formatter
    module Json
      class << self

        def call(object, env)
          # return object.to_json if object.respond_to?(:to_json)
          MultiJson.dump(object, pretty: true)
        end

      end
    end
  end
end
