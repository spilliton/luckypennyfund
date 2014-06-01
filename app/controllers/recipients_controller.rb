class RecipientsController < ApplicationController
  before_action :set_recipient, only: [:show, :edit, :update, :destroy]

  # GET /recipients
  # GET /recipients.json
  def index
    @user = User.find(params[:user_id])
    @recipients = @user.recipients
  end

  # GET /recipients/1
  # GET /recipients/1.json
  def show
  end

  # GET /users/:user_id/recipients/new
  def new
    @user = User.find(params[:user_id])
    @recipient = @user.recipients.build
  end

  # GET /users/:user_id/recipients/1/edit
  def edit
  end

  # POST /users/:user_id/recipients
  # POST /users/:user_id/recipients.json
  def create
    @user = User.find(params[:user_id])
    @recipient = @user.recipients.build(recipient_params)

    respond_to do |format|
      if @recipient.save
        format.html { redirect_to [@user, @recipient], notice: 'Recipient was successfully created.' }
        format.json { render :show, status: :created, location: [@user, @recipient] }
      else
        format.html { render :new }
        format.json { render json: [@user, @recipient.errors], status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/:user_id/recipients/1
  # PATCH/PUT /users/:user_id/recipients/1.json
  def update
    # TODO: Check recipient.creator_id is authorized current_user.id

    respond_to do |format|
      if @recipient.update(recipient_params)
        format.html { redirect_to [@user, @recipient], notice: 'Recipient was successfully updated.' }
        format.json { render :show, status: :ok, location: [@user, @recipient] }
      else
        format.html { render :edit }
        format.json { render json: [@user, @recipient.errors], status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients/1
  # DELETE /recipients/1.json
  def destroy
    @recipient.destroy
    respond_to do |format|
      format.html { redirect_to user_recipients_url, notice: 'Recipient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipient
      @user = User.find(params[:user_id])
      @recipient = @user.recipients.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipient_params
      params.require(:recipient).permit(:name, :email)
    end
end
