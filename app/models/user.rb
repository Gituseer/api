class User < ApplicationRecord

	has_secure_password
	before_save :downcase_email

	validacion_email = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i #expresion regular valida la direccion de un email
                         
	validates :name, presence: true
	validates :email, presence: true, format: {with: validacion_email}, uniqueness: {case_sentive: false}, length: { maximum: 100}  
	validates :password, length: {minimum: 6}, presence: true, allow_nil: true 
    
    private
    
    def downcase_email
        self.email.downcase! 
    end
    




end
