class Contacto < MailForm::Base
    attribute :name, validate: true
    attribute :email
    attribute :message
    attribute :file, attachment: true
  
    def headers
      {
        subject: 'Alquilapp, contacto de emergencia',
        to: 'baezeze01@gmail.com',
        from: %("#{name}" <#{email}>)
     }
    end
  end