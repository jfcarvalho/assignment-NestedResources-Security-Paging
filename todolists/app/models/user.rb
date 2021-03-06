class User < ActiveRecord::Base
	
	has_many :todo_lists, :dependent => :destroy
	has_many :todo_items, through: :todo_lists, source: :todo_items, :dependent => :destroy 
	validates :username, presence: true
	has_secure_password
	def get_completed_count
		self.todo_items.where(completed:true).count
	end
		
end
