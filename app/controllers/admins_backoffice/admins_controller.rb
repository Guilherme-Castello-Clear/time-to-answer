class AdminsBackoffice::AdminsController < AdminsBackofficeController
<<<<<<< HEAD
  before_action :verify_password, only: [:update, :create]
=======
  before_action :verify_password, only: [:update]
>>>>>>> f686038097ba1629b3b4ed3836725c5338785fb8
  before_action :set_admin, only: [:edit, :update]
  
  def index
    @admins = Admin.all
  end

<<<<<<< HEAD
  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(params_admin)
    if @admin.save()
      redirect_to admins_backoffice_admins_path, notice: "Administrador cadastrado com sucesso!"
    else
      render :new
    end
  end
=======
>>>>>>> f686038097ba1629b3b4ed3836725c5338785fb8
  def edit
  end

  def update

    if @admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: "Administrador atualizado com sucesso!"
    else
      render :edit
    end
  end


  private

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def verify_password
    if params[:admin][:password].blank? && params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end
end
