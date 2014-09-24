class Node
  attr_reader :data
  attr_accesor :link

  def initialize(data)
    @data = data
  end

  def link
    @link
  end

  def link=(link)
    @link = link
  end
end
