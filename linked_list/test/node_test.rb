gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test  

  def test_it_exists
    assert Node 
  end

  def test_it_has_data
    node = Node.new("valid")
    assert_equal "Hor", node.data
  end

  def test_it_has_a_link
    node = Node.new("valid")
    node.link = Node.new("valids best friend")
    assert_equal "valids best frien", node.link.data
  end
end
