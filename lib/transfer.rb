class Transfer
    attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def both_valid?
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if @sender.balance < @amount
      @status = "rejected"
      return "Transaction rejected."
  end
end
 
  def reverse_transfer
    if @status == "complete"
      @sender.deposit(@amount) 
      @receiver.deposit(@amount * -2)
      @status = "reversed"
    end
  end

end
