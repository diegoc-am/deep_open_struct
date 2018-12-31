# frozen_string_literal: true

require 'test_helper'

class DeepOpenStructTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil(::DeepOpenStruct::VERSION)
  end

  def test_it_can_access_a_value
    deep_o_struct = ::DeepOpenStruct.new(a: { b: { c: :d } })
    assert_equal(:d, deep_o_struct.a.b.c)
  end
end
