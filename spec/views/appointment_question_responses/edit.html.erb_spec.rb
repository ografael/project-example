require 'rails_helper'

RSpec.describe "appointment_question_responses/edit", type: :view do
  before(:each) do
    @appointment_question_response = assign(:appointment_question_response, AppointmentQuestionResponse.create!(
      appointment_question: nil
    ))
  end

  it "renders the edit appointment_question_response form" do
    render

    assert_select "form[action=?][method=?]", appointment_question_response_path(@appointment_question_response), "post" do

      assert_select "input[name=?]", "appointment_question_response[appointment_question_id]"
    end
  end
end
