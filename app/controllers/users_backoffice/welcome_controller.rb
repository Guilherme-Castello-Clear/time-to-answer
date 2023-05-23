class UsersBackoffice::WelcomeController < UsersBackofficeController
    before_action :set_user
    
    def index
    end

    def set_user
        @user = User.find(current_user.id)
    end
end
