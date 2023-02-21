namespace :dev do
  desc "Configura o banco"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Configurando o banco de dados")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success('(Sucesso)')

      spinner = TTY::Spinner.new("[:spinner] Configurando o banco de dados")
      spinner.auto_spin
      %x(rails  db:create)
      spinner.success('(Sucesso)')

      spinner = TTY::Spinner.new("[:spinner] Configurando o banco de dados")
      spinner.auto_spin
      %x(rails  db:migrate)
      spinner.success('(Sucesso)')

      spinner = TTY::Spinner.new("[:spinner] Configurando o banco de dados")
      spinner.auto_spin
      %x(rails  db:seed)
      spinner.success('(Sucesso)')
    end
  end

end

