class ContactsController < ApplicationController
    def index
        
    end

    def new
        @contact = Contact.new
        #@contact.fullname = 'Jhonatan'
        #@contact.phone = 3022626559
        #@contact.email = 'jdatuesta7@gmail.com'
    end

    def store
        @contact = Contact.create(fullname: params[:contact][:fullname], phone: params[:contact][:phone], email: params[:contact][:email])
        render json: @contact
    end

    def show
        @contact = Contact.find(params[:id])
    end

    def edit
        @contact = Contact.find(params[:id])
    end

    def update
        @contact = Contact.find(params[:id])
        @contact.update(fullname: params[:contact][:fullname], phone: params[:contact][:phone], email: params[:contact][:email])
        
        redirect_to @contact
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy
        
        redirect_to root_path
    end
    
end
