class ContactsController < ApplicationController


  def index
    @contacts = Contact.all
  end

  def new
    
  end
  def show
    @contact = Contact.find(params[:id])
  end

  def create
    @contact = Contact.new(
        first_name: params["first_name"],
        last_name: params["last_name"],
        email: params["email"],
        phone_number: params["phone_number"],
        bio: params["bio"],
        user_id: 1

      )
    
    if @contact.save
    redirect_to "/contacts/#{@contact.id}"
    else
    render json:{errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def edit
    @contact = Contact.find(params[:id])
    
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.first_name = params[:first_name]
    @contact.middle_name = params[:middle_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone_number = params[:phone_number]
    @contact.bio = params[:bio]

    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
