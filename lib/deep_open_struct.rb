# frozen_string_literal: true

require 'ostruct'

##
# Converts the nested hashes to open structs too
class DeepOpenStruct < OpenStruct
  def initialize(hash)
    super(hash.each_with_object({}) { |(k, v), h| h[k] = v.is_a?(Hash) ? self.class.new(v) : v })
  end
end
