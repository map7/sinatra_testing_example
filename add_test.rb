require 'test-unit'

class AddTest < Test::Unit::TestCase

  def test_add
    result = add(1,1)
    assert_equal 2,result
  end
end
