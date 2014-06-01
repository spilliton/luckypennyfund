require 'test_helper'

class UsersControllerTest < ActionController::TestCase


  context "non-admin logged in" do 
    setup do 
      @user = users(:donor)
      sign_in :user, @user
    end

    should "redirect to / for all routes" do 
      get :index
      assert_redirected_to "/"

      get :new
      assert_redirected_to "/"

      get :show, id: @user
      assert_redirected_to "/"
    end
  end


  context "admin logged in" do 
    setup do
      @user = users(:superuser)
      sign_in :user, @user
    end

    should "get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:users)
    end

    should "get new" do
      get :new
      assert_response :success
    end

    should "create user" do
      assert_difference('User.count') do
        post :create, user: { email: 'anewbro@gmail.com', first_name: 'first', last_name: 'last', password: 'blahblah', password_confirmation: 'blahblah' }
      end

      assert_redirected_to user_path(assigns(:user))
    end

    should "show user" do
      get :show, id: @user
      assert_response :success
    end

    should "get edit" do
      get :edit, id: @user
      assert_response :success
    end

    should "update user" do
      patch :update, id: @user, user: { email: 'anewbro@gmail.com', first_name: 'first', last_name: 'last' }
      assert_redirected_to user_path(assigns(:user))
    end

    should "destroy user" do
      assert_difference('User.count', -1) do
        delete :destroy, id: @user
      end

      assert_redirected_to users_path
    end
  end
end
