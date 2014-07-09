class Customer < ActiveRecord::Base
  belongs_to :city
  validates :name,:email,:city,:country,:phone_number,presence:true 
  validates :name,format: {with: /\A[a-zA-Z ]+\z/,message: 'Only letters'}
  validates :email,format: {with:   /[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}/,message: "Enter a valid email"}
  validates :phone_number,format: {with: /[0-9]/,message: 'Enter your phone number'}
  validates :phone_number,length:{minimum:10,maximum:13,too_short:"Enter your phone number",too_long:"Enter your phone number"}
end
