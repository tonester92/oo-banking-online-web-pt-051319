class Transfer
    attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def both_valid?
     @sender.valid? && @receiver.valid? ? true : false
  end


  def execute_transaction
    
end
 
  def reverse_transfer
    
  end

end
