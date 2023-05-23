class UsersBackoffice::WelcomeController < UsersBackofficeController
    before_action :set_user
    
    def index
        @user_statistic = UserStatistic.find_or_create_by(user: current_user)
    end

    def set_user
        @user = User.find(current_user.id)
    end
end
