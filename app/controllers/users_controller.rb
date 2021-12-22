class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    @states =  State.joins(:users).order(:name).uniq
    @state_ids = []
    @order_by = []

    if params[:order]
      @order_by = params[:order]
      @users = @users.order(@order_by)
    else
      @users = @users.order(:person_name)
    end

    if params[:state_ids]
      @state_ids = params[:state_ids]
      p @state_ids
      @users = @users.search(@state_ids)
    end


    respond_to do |format|
      format.html
      format.js
    end

  end

  # GET /users/1 or /users/1.json
  def show
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /users/new
  def new
    @user = User.new
    @states = State.all
  end

  # GET /users/1/edit
  def edit
    @states = State.all
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    @states = State.all

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "Usuario criado com sucesso!" }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @states = State.all
    @statesFilter = State.all.to_json.html_safe

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "Usuario editado com sucesso!" }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Usuario apagado com sucesso!" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:person_name, :street, :city, :state_id, :state_uf, :postal_code, :person_image, :avatar, :born_date, :email, state_ids: [])
    end
end
