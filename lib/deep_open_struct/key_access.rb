# frozen_string_literal: true

class DeepOpenStruct < OpenStruct
  ##
  # Enables the usage `[]` and `[]=`
  module KeyAccess
    def [](key)
      public_send(key)
    end

    def []=(key, value)
      public_send("#{key}=", value.is_a?(Hash) ? self.class.new(value) : value)
    end
  end
end
