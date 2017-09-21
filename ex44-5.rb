module Paws #this module has-a relationship with Kitten
  def override()
    puts "Paws override!()"
  end

  def implicit()
    puts "Paws implicit()"
  end

  def Paws.altered()
    puts "Paws altered!!()"
  end
end

class Kitten
  include Paws

  def override()
    puts "Kitten override()"
  end

  def altered()
    puts "Kitten, before Paws altered()"
    Paws.altered()
    puts "Kitten, after Paws altered()"
  end
end

beans = Kitten.new()

beans.implicit()
beans.override()
beans.altered()
