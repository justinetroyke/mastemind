require 'minitest/autorun'
require 'minitest/pride'
require './lib/code_generator'
require 'pry'

class CodeGeneratorTest < Minitest::Test

  def test_code_generator_class_exists
    code = CodeGenerator.new

    assert_instance_of Code, code 
  end
end
