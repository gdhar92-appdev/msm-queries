class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    
    render({ :template => "director_templates/index.html.erb"})

  end

  def wisest
  
    @oldest = Director.all.order({ :dob => :asc }).where.not( :dob => nil).at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def newest
    @youngest = Director.all.order({ :dob => :asc }).where.not( :dob => nil).last
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details
    the_id = params.fetch("an_id")

    @the_director = Director.where({:id => the_id}).first
    render({ :template => "director_templates/show.html.erb"})
  end

end