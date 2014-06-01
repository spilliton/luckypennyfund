require 'test_helper'

class RecipientsControllerTest < ActionController::TestCase
  
  context "a recipient" do 
    setup do
      @recipient = recipients(:one)
    end

    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:recipients)
    end

    should "get new" do
      get :new
      assert_response :success
    end

    should "create recipient" do
      assert_difference('Recipient.count') do
        post :create, recipient: { email: @recipient.email, name: @recipient.name }
      end

      assert_redirected_to recipient_path(assigns(:recipient))
    end

    should "show recipient" do
      get :show, id: @recipient
      assert_response :success
    end

    should "get edit" do
      get :edit, id: @recipient
      assert_response :success
    end

    should "update recipient" do
      patch :update, id: @recipient, recipient: { email: @recipient.email, name: @recipient.name }
      assert_redirected_to recipient_path(assigns(:recipient))
    end

    should "destroy recipient" do
      assert_difference('Recipient.count', -1) do
        delete :destroy, id: @recipient
      end

      assert_redirected_to recipients_path
    end
  end
  
end
