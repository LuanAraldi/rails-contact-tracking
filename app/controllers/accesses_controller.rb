class AccessesController < ApplicationController
  before_action :set_access, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  # GET /accesses
  # GET /accesses.json
  def index
    @accesses = Access.all
  end

  # GET /accesses/1
  # GET /accesses/1.json
  def show
  end

  # GET /accesses/new
  def new
    @access = Access.new
  end

  # POST /accesses
  # POST /accesses.json
  def create
    @access = Access.new(access_params)

    if !check_if_contact_exists(@access.contact_id)
      create_new_contact(@access.contact_id)
    end

    respond_to do |format|
      if @access.save
        format.html { redirect_to @access, notice: 'Access was successfully created.' }
        format.json { render :show, status: :created, location: @access }
      else
        format.html { render :new }
        format.json { render json: @access.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accesses/1
  # DELETE /accesses/1.json
  def destroy
    @access.destroy
    respond_to do |format|
      format.html { redirect_to accesses_url, notice: 'Access was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_access
      @access = Access.find(params[:id])
    end

    def access_params
      params.require(:access).permit(:url, :contact_id)
    end

    def check_if_contact_exists (contact_id)
      Contact.exists?(contact_id)
    end

    def create_new_contact (contact_id)
      contact = Contact.new(id: contact_id)
      if !contact.save
        format.html { render :new }
        format.json { render json: contact.errors, status: :unprocessable_entity }
      end
    end
end
