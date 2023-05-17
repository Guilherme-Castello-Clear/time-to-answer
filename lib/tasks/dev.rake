namespace :dev do

  DEFAULT_PASSWORD = 123456


  desc "TODO"
  task setup: :environment do
  end

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      
      show_spinner("Apagando DB...") { %x(rails db:drop) }
      show_spinner("Criando tabelas...") { %x(rails db:create) } 
      show_spinner("Migrando...") { %x(rails db:migrate) }
      show_spinner("Cadastrando administrador padrão...") { %x(rails dev:add_default_admin) }
      show_spinner("Cadastrando administradores extras...") { %x(rails dev:add_extra_admins) }
      show_spinner("Cadastrando usuario padrão...") { %x(rails dev:add_default_user) }

    else
      puts "Não estpa em ambiente de desenvolvimento"
    end
  end

  desc "Adiciona o administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: 123456,
      password_confirmation: 123456
    )
  end

  desc "Adiciona outro administrador"
  task add_extra_admins: :environment do
    10.times do |i|
      Admin.create!(
        email: Faker::Internet.email,
        password: 123456,
        password_confirmation: 123456
      )
    end
  end

  desc "Adiciona o usuário padrão"
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: 123456,
      password_confirmation: 123456
    )
  end



  private
  def show_spinner(msg_start, msg_end = 'Done!')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :pulse_2)
    spinner.auto_spin
    yield
    spinner.success("#{msg_end}")

  end


end
