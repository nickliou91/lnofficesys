class ContactUsMailer < ActionMailer::Base
  default from: "notification@landn.com"


  def quotation_notification(contact)
  	@contact = contact
  	mail(to: 'lnoffsys@gmail.com', subject:" Message from contact us")
  		

  end

end
