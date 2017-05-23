class HelloWorldController < ApplicationController
  def hello
  end

  def show
    render :text => "Hello World!"
  end
end
