require "minitest/autorun"
require "minitest-rails"

class TestDiminutivity < MiniTest::Unit::TestCase
  def test_sanity
    assert Diminutivity::VERSION
  end
end
