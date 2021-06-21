class ContactsController < ApplicationController
    before_action :authenticate_user!
    before_action :contacts_params, only: [:create, :update]
    before_action :findContact, only: [:show, :edit, :update, :destroy]
    
    def index
        @contacts = Contact.all
    end

    def new
        @contact = Contact.new
    end

    def create
        @contact = current_user.contacts.create(contacts_params)
        #render json: @contact
        redirect_to "/contacts"
    end

    def show
    end

    def edit
    end

    def update
        @contact.update(contacts_params)
        redirect_to @contact
    end

    def destroy
        @contact.destroy
        redirect_to "/contacts"
    end

    def findContact
        @contact = Contact.find(params[:id])
    end

    private
    def contacts_params
        params.require(:contact).permit(:fullname, :phone, :email)
    end
    
end
