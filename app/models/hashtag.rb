class Hashtag < ActiveRecord::Base
	has_many :hashtag_questions
	has_many :questions, through: :hashtag_questions
end
