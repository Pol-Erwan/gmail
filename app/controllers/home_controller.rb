class HomeController < ApplicationController
  def index
    @tasks = Task.all
    @categories = Category.all
    @emails = Email.all
  end
end
