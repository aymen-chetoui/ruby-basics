module Rankable
  
  # with @rank instance variable this will work, but a general rule is that a module depends on an instance method/attribute
  def thumbs_up
    #@rank += 1
    self.rank += 1 # here we re changing the rank, not only using the reader attribute, we need to change to accessor attribute
  end
  
  def thumbs_down
    #@rank -= 1
    self.rank -= 1
  end
  
  def normalized_rank
    # @rank / 10
    self.rank / 10
  end
  
  def <=>(other)
    # other.rank <=> @rank
    other.rank <=> self.rank
  end
  
  def status
    hit? ? 'Hit' : 'Flop'
  end
  
  def hit?
    # @rank >= 10
    self.rank >= 10
  end

end