class Person < ActiveRecord::Base
  validates :name,presence: {strict: true},if: :paid_with_card?
  ,if: "name.nil?",if: Proc.new{
    |a| a.
  }
  def paid_with_card?
    name=="wq"
    
  end
  with_options if: :is_admin? do |admin|
    admin.validates :password,length:{minimum:10}
    admin.validates :email,presence:true,uniqueness:true
  end
end

Person.create(name:"wq").valid?
Person.create(name:nil).valid?
