# frozen_string_literal: true

require 'test_helper'
require 'deep_open_struct_with_key_access'

class DeepOpenStructWithKeyAccessTest < Minitest::Test
  def test_it_can_access_a_value
    deep_o_struct = ::DeepOpenStructWithKeyAccess.new(a: { b: { c: :d } })
    assert_equal(:d, deep_o_struct[:a].b[:c])
  end

  def test_it_can_set_a_value
    deep_o_struct = ::DeepOpenStructWithKeyAccess.new(a: { b: { c: :d } })
    assert_equal(:d, deep_o_struct[:a].b[:c])
    deep_o_struct[:a] = { x: :y }
    assert_equal(:y, deep_o_struct.a.x)
  end
end
