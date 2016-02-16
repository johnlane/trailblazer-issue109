class Testthing < ActiveRecord::Base

  class Test < Trailblazer::Operation
    include Model
    model Testthing, :create

    class Form < Reform::Form
      property :item, validates: {presence: true }
    end
    contract Form

    def process(params)
      validate(params[:testthing])
    end
  end
end
