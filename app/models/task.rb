class Task < ActiveRecord::Base
  state_machine :state, initial: :inactive do
    event :enable do
      transition all => :active
    end

    event :disable do
      transition all => :inactive
    end
  end
end
