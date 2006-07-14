def inherited(subclass)
  subclass.class_eval do

    def self.new(*arguments, &block)
      __new__(*arguments, &block)
    end
  
  end

end
