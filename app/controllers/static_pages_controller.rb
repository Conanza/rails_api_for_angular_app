class StaticPagesController < ApplicationController
  def root
  end

  def hello
    render text: "Hello! Welcome to the Names API Test Server!"
  end
end
