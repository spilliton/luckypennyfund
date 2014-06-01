require 'test_helper'

class RecipientsControllerTest < ActionController::TestCase
  
  context "a recipient" do 
    setup do
      @recipient = recipients(:one)
      @caseworker = users(:caseworker)
      @recipient.creator_id = @caseworker.id
      @recipient.save
    end

    should "get index" do
      get :index, user_id: @caseworker
      assert_response :success
      assert_not_nil assigns(:recipients)
    end

    should "get new" do
      get :new, user_id: @caseworker
      assert_response :success
    end

    should "create recipient" do
      assert_difference('Recipient.count') do
        post :create, user_id: @caseworker, recipient: { email: @recipient.email, first_name: @recipient.first_name, last_name: @recipient.last_name }
      end

      assert_redirected_to user_recipient_path(assigns(:user), assigns(:recipient))
    end

    should "show recipient" do
      get :show, user_id: @caseworker, id: @recipient
      assert_response :success
    end

    should "get edit" do
      get :edit, user_id: @caseworker, id: @recipient
      assert_response :success
    end

    should "update recipient" do
      patch :update, user_id: @caseworker, id: @recipient, recipient: { email: @recipient.email, first_name: @recipient.first_name, last_name: @recipient.last_name }
      assert_redirected_to user_recipient_path(assigns(:user), assigns(:recipient))
    end

    should "destroy recipient" do
      assert_difference('Recipient.count', -1) do
        delete :destroy, user_id: @caseworker, id: @recipient
      end

      assert_redirected_to user_recipients_path
    end
  end
  
end
