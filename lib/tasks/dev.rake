namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do  	
  	
  	User.create!(
		email: 'muriloangelo10@gmail.com',
		password: '123123123'
	)
  
  end

end
