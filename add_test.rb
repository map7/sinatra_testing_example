require 'test-unit'

def add(a,b)
  a + b
end

class AddTest < Test::Unit::TestCase
  
  def test_add__number
    result = add(1,1)
    assert_equal 2,result
  end

  def test_add__string
    assert_raise TypeError do
      add(1,"foo")
    end
  end
end
