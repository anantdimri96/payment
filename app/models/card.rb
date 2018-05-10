class Card < ApplicationRecord
   validates_presence_of :name,:email,:amount,:phone_no
   validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
   validates_format_of :phone_no, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"

end
