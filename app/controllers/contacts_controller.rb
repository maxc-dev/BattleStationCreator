class ContactsController < ApplicationController
  before_action :redriect_not_signed_in, only: %i[show edit update destroy]
  before_action :set_contact, only: %i[show edit update destroy]

  def redriect_not_signed_in
    unless current_user.present?
      redirect_to new_user_session_path
    end
  end

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = if current_user.present?
                  Contact.user_contacts(current_user)
                else
                  Contact.none
                end
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show; end

  # GET /contacts/new
  def new
    if current_user.present?
      @contact = Contact.new
      @contact.user_id = current_user
    else
      redirect_to new_user_session_path
    end
  end

  # GET /contacts/1/edit
  def edit;
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    if current_user.present?
      @contact.user_id = current_user.id
    else
      redirect_to new_user_session_path
    end
    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contact
    @contact = Contact.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def contact_params
    params.require(:contact).permit(:user_id, :title, :body)
  end
end
