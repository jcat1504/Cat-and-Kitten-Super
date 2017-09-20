class Cat

  def override()
    puts "This is a CAT OVERRIDE()"
  end

  def implicit()
    puts "This is a CAT IMPLICIT()"
  end

  def altered()
    puts "This is CAT ALTERED()"
  end
end

class Kitten < Cat

  def override()
    puts "KITTEN override()"
  end

  def implicit()
    puts "KITTEN implicit()"
  end


  def altered()
  puts "KITTEN before CAT altered()"
  super()#This will call altered function from Parent
  puts "KITTEN after CAT altered()"
  end
end



beans = Cat.new()
scrambles = Kitten.new()

beans.implicit()
scrambles.implicit()

beans.override()
scrambles.override()

beans.altered()
scrambles.altered()
