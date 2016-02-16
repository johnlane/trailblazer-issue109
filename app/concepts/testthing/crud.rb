class Testthing < ActiveRecord::Base

  class Test < Trailblazer::Operation
    include Model
    model Testthing, :create

    contract do
      property :item, validates: {presence: true }
    end

    def process(params)
      validate(params[:testthing])
    end
  end
end
