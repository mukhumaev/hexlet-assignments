# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def test_empty
    stack = Stack.new
    assert(stack.empty?)
  end

  def test_to_a
    stack = Stack.new
    stack.clear!
    stack.push!(1)
    stack.push!(99)
    assert_equal(stack.to_a, [1, 99])
    assert_equal(stack.to_a.class, Array)
  end

  def test_pop
    stack = Stack.new
    before = stack.to_a
    assert_equal(stack.pop!, before.pop)
  end

  def test_push
    stack = Stack.new
    size_before = stack.size
    added_count = 5
    (1..added_count).each { |n| stack.push!(n) }
    assert_equal((stack.size - size_before), added_count)
  end

  def test_clear
    stack = Stack.new
    stack.push!(1)
    stack.push!(3)
    stack.push!(10)
    assert_equal(stack.clear!, [])
  end

  def test_size
    stack = Stack.new
    stack.clear!
    count = 5
    (1..count).each { |n| stack.push!(n) }
    assert_equal(stack.size, count)
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
