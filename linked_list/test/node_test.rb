gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test 

  def test_it_exists
    assert Node 
  end

  def test_it_has_data
    node = Node.new("Horse")
    assert_equal "Horse", node.data
  end

  def test_it_has_a_link
    node = Node.new("Horse")
    node.link = Node.new("Donkey")
    assert_equal "Donkey", node.link.data
  end
end
