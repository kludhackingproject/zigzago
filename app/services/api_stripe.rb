class ApiStripe

  attr_accessor :amount

  def initialize(amount, email, stripe_token)

    begin
      customer = Stripe::Customer.create({
        email: email,
        source: stripe_token,
      })

      charge = Stripe::Charge.create({
        customer: customer.id,
        amount: amount,
        description: 'Rails Stripe customer',
        currency: 'usd',
      })

    rescue Stripe::CardError => e
      flash[:error] = e.message
    end

  end

end
