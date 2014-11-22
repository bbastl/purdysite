module ProductHelpers
  
  def self.included(base)
    base.extend(ClassMethods)
  end
    
  module ClassMethods
    def to_display
      where(is_active: true).order("sort")
    end
    
    def display_all_sorted
      order("is_active desc").order("sort")
    end
  end
end