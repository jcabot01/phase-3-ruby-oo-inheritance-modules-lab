module Memorable
  module ClassMethods 

    def reset_all #removed self
      self.all.clear
    end

    def count
      self.all.count
    end

  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end

# self is ommited when defining class methods inside modules