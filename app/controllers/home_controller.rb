class HomeController < ApplicationController

  def index
		# get public home
		@articles = Article.first(4)
		@facilities = Facility.all
  end

  def about
		# get public about
  end

  def terms
		# get public terms
  end

  def privacy
		# get public privacy
  end

  def faq
		# get public faq
		@faqs = Question.all
  end

end
