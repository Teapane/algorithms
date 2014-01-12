gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test

  def test_it_exists
    assert LinkedList
  end 

  def test_it_increases_count_when_pushed
    linked_list = LinkedList.new
    assert_equal 0, linked_list.count 
    linked_list.push "It real good"
    assert_equal 1, linked_list.count
  end

  def test_count_works_a_lot
    linked_list = LinkedList.new
    50.times do 
      linked_list.push rand(100)
    end
    assert_equal 50, linked_list.count 
  end

  def test_pop_gets_rid_of_an_element
  
    linked_list = LinkedList.new
    linked_list.push 1
    linked_list.push 2
    linked_list.pop
    assert_equal 1, linked_list.count
  end

  def test_shifts_removes_element_from_the_beginning
    linked_list = LinkedList.new
    linked_list.push 1
    linked_list.push 2
    linked_list.shift
    assert_equal 1, linked_list.count
    assert_equal 2, linked_list.head.data
  end
end




