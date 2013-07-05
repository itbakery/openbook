class InvoiceMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invoice_mailer.confirm_payment.subject
  #
  def confirm_payment(invoice)
    @invoice = invoice

    mail to: "#{invoice.customer.firstname}<#{invoice.customer.email}>"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invoice_mailer.success_payment.subject
  #
  def success_payment
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
