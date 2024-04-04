require 'test-unit'
require_relative 'main'

class AddTest < Test::Unit::TestCase

  def setup
    @my_math = MyMath.new
  end
  
  # Happy path
  def test_add__number
    result = @my_math.add(1,1)
    assert_equal 2,result
  end

  # Edge cases
  def test_add__string
    assert_raise_with_message(TypeError,"No bloody strings thanks") do
      @my_math.add(1,"foo")
    end
  end

  def test_add__nil
    assert_raise_with_message(TypeError,"No bloody nils thanks") do
      @my_math.add(1,nil)
    end
    # result = @my_math.add(1,nil)
    # assert_equal 1,result
  end

  def test_add__nil_string
    assert_raise_with_message(TypeError,"No bloody nils thanks") do
      @my_math.add(nil,"foo")
    end
  end
  
end
