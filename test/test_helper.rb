# frozen_string_literal: true

require 'coveralls'
require 'simplecov'

Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
])
SimpleCov.start do
  add_filter 'test'
end

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'deep_open_struct'

require 'minitest/autorun'
