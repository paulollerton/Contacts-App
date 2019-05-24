class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all

    if params[:first_name]
      @contacts = @contacts.where("first_name iLIKE ?", "%#{params[:first_name]}%")
    end

    render "index.json.jbuilder"
  end

  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.json.jbuilder"
  end

  def create
    @contact = Contact.new(
      id: params[:id],
      first_name: params[:first_name],
      last_name: params[:last_name],
      middle_name: params[:middle_name],
      email: params[:email],
      phone_number: params[:phone_number])
      @contact.save
      render "show.json.jbuilder"
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.id = params[:id] || @contact.id
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.save
    render "show.json.jbuilder"
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render json: {message: "Contact Deleted"}

  end

end
