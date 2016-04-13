class Profile < ActiveRecord::Base
  belongs_to :user
  validate :notbothnull
  validates :gender, inclusion: { in: %w(male female)}
  validate :sue_male

  def notbothnull
		if self.first_name.nil? and self.last_name.nil?  
			errors.add :last_name, "Error"
		end

	end

 def sue_male
		if self.gender.eql? "male" and self.first_name.eql? "Sue"  
			errors.add :first_name, "Error"
		end

		end

def self.get_all_profiles (min, max)
	Profile.where(:birth_year => min..max).order(:birth_year)
end

end
