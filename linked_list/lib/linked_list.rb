require './lib/node'
class LinkedList
  attr_reader :head

  def count
    current_count = 0
    if head
      current = head
      previous = nil
      current_count += 1 
      while current.link 
        previous = current 
        current = current.link 
        current_count += 1 
      end
    end
    return current_count
  end

  def push(data)
    new_node = Node.new(data)
    return @head = new_node if @head.nil?
      current = head
      previous = nil 
      while current.link 
        previous = current 
        current = current.link   
      end
      current.link = new_node
  end

  def pop
    current = head
      previous = nil 
      while current.link 
        previous = current 
        current = current.link   
      end
      previous.link = nil
  end

  def shift
    current = head.link 
    @head = current 
  end
end
