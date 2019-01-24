class Api::ContactsController < ApplicationController



  # def one_contact_method
  # @contact = Contact.first
  # render 'one_contact.json.jbuilder'
  
  # end

  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jbuilder'
    
  end

  def create
    @contact = Contact.new(
        first_name: params["first_name"],
        
        last_name: params["last_name"],
        email: params["email"],
        phone_number: params["phone_number"],
        bio: params["bio"],
        # address: params["address"]

      )
    if params[:middle_name]
      @contact.middle_name = params[:middle_name]
    end
    
    if @contact.save
    render 'show.json.jbuilder'
    else
    render json:{errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.middle_name = params["middle_name"] || @contact.middle_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    @contact.bio = params["bio"] || @contact.bio
    # @contact.address = params["address"] || @contact.address
    if @contact.save
    render 'show.json.jbuilder'
    else
    render json:{errors: @contact.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    render json: {message: "Your contact has been destroyed"}
  end
end
