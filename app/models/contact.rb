class Contact < MailForm::Base

	attribute :name, 					:validate => true
	attribute :email, 				:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :telephone, 		:validate => false
	attribute :comments, 			:validate => false
	attribute :nickname, 			:captcha => true

def headers 
	{
	:subject => "Contact form",
	:to => "hernan@cpagricola.mx",
	:cc => "alejandroromo14@gmail.com",
	:from => %("#{name}" <#{email}>)
	}
	end
end