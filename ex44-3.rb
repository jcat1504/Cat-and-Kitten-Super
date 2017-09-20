class Other
  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Kitten

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "KITTEN override"
  end

def altered()
  puts "KITTEN, before OTHER altered()"
  @other.altered()
  puts "KITTEN, after OTHER altered()"
end
end

beans = Kitten.new()

beans.implicit()
beans.override()
beans.altered()
