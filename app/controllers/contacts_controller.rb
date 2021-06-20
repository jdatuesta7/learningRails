class ContactsController < ApplicationController
    before_action :authenticate_user!
    before_action :getFormData, only: [:store, :update]
    before_action :findContact, only: [:show, :edit, :update, :destroy]
    
    def index
        @contacts = Contact.all
    end

    def new
        @contact = Contact.new
    end

    def store
        @contact = Contact.create(fullname: @formData['fullname'], phone: @formData['phone'], email: @formData['email'])
        #render json: @contact
        redirect_to "/contacts"
    end

    def show
    end

    def edit
    end

    def update
        @contact.update(fullname: @formData['fullname'], phone: @formData['phone'], email: @formData['email'])
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
    def getFormData
        @formData =  params.require(:contact).permit(:fullname, :phone, :email)
    end
    
end
