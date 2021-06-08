# app/controllers/communications_controller.rb
class CommunicationsController < ApplicationController
  # GET /todos
  def index
    @communications = Communication.adults

    json_response(add_attachments_count)
  end

  private
  def add_attachments_count
    @com_data = []
    @communications.each do |com|
      new_field = {"new_field" => com.attachment.count}
      com = JSON::parse(com.to_json).merge(new_field)
      @com_data << com
    end

  end
end