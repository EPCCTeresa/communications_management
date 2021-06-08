# app/controllers/todos_controller.rb
class PeopleController < ApplicationController
  # GET /todos
  def index
    @people = Person.adults
    json_response(@people)
  end
end