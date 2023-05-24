class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  def index
    @total_questions = AdminStatistic._total_users_
    @total_users = AdminStatistic._total_questions_
  end
end
