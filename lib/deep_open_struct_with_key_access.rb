# frozen_string_literal: true

require_relative 'deep_open_struct'
require_relative 'deep_open_struct/key_access'

##
# Same as the parent but it also defines `[]` and  `[]=`
class DeepOpenStructWithKeyAccess < DeepOpenStruct
  include KeyAccess
end
