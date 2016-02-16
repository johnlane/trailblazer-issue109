require 'test_helper'

class CrudTest < MiniTest::Spec
  it do
    res, op = Testthing::Test.run(testthing:{})
    res.must_equal false
    op.errors.to_s.must_equal "{:item=>[\"can't be blank\"]}"
  end
end
