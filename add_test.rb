require 'test-unit'

def add(a,b)
  
  if a.nil? or b.nil?
    raise TypeError, "No bloody nils thanks"
  end

  if a.class != Integer or b.class != Integer
    raise TypeError, "No bloody strings thanks"
  end
  
  a + b
end

class AddTest < Test::Unit::TestCase
  
  # Happy path
  def test_add__number
    result = add(1,1)
    assert_equal 2,result
  end

  # Edge cases
  def test_add__string
    assert_raise_with_message(TypeError,"No bloody strings thanks") do
      add(1,"foo")
    end
  end

  def test_add__nil
    assert_raise_with_message(TypeError,"No bloody nils thanks") do
      add(1,nil)
    end
    # result = add(1,nil)
    # assert_equal 1,result
  end

  def test_add__nil_string
    assert_raise_with_message(TypeError,"No bloody nils thanks") do
      add(nil,"foo")
    end
  end
  
end
