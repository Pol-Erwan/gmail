class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    my_emails = Email.create(object: Faker::Book.title,Body: Faker::Lorem.paragraphs)
    my_emails.save

    respond_to do |format|
      format.html { redirect_to books_path }
      format.js { }
    end
  end

end
