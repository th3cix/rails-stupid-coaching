class QuestionController < ApplicationController
	def ask
	end

	def answer
		@value = params[:q]

		if is_it_a_question?(@value)
			@answer = "Silly question, get dressed and go to work!"
		else
			case @value
			when "I am going to work"
				@answer = "Great!"
			else
				@answer = "I don't care, get dressed and go to work!"
			end
		end
	end

	private

	def is_it_a_question?(message)
		message[-1] == "?"
	end
end