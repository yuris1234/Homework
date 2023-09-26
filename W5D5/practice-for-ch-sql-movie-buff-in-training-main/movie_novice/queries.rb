# == Schema Information
#
# Table name: actors
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  yr          :integer          not null
#  score       :float            not null
#  votes       :integer          not null
#  director_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Table name: castings
#
#  id         :bigint           not null, primary key
#  movie_id   :bigint           not null
#  actor_id   :bigint           not null
#  ord        :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null


def find_angelina
  # find Angelina Jolie by name in the actors table
<<<<<<< HEAD

=======
  Actor.find_by(name: "Angelina Jolie")
>>>>>>> refs/remotes/origin/main
end

def top_titles
  # get movie titles from movies with scores greater than or equal to 9
  # hint: use 'select' and 'where'
<<<<<<< HEAD
  
=======
  titles = Movie.all.select(:title)
  titles.where(score: 9)
>>>>>>> refs/remotes/origin/main
end

def star_wars
  # display the id, title, and year of each Star Wars movie in movies
  # hint: use 'select' and 'where'
<<<<<<< HEAD
  
=======
  Movie 
    .select(:id, :title, :yr)
    .where('title LIKE \'%Star Wars%\'')
>>>>>>> refs/remotes/origin/main
end


def below_average_years
  # display each year with movies scoring under 5, with the count of movies
  # scoring under 5 aliased as bad_movies, in descending order
  # hint: use 'select', 'where', 'group', 'order'
<<<<<<< HEAD
  
=======
  Movie 
    .select('yr', 'COUNT(*) AS bad_movies')
    .where('score < 5') 
    .group('yr')
    .order('bad_movies DESC')
>>>>>>> refs/remotes/origin/main
end

def alphabetized_actors
  # display the id and name of the second 10 actor names (i.e., #s 11-20)
  # when ordered from A-Z
  # hint: use 'order' and 'limit'
<<<<<<< HEAD
  
=======
  Actor 
    .select(:id, :name)
    .order(:name)
    .offset(10)
    .limit(10)
>>>>>>> refs/remotes/origin/main
end

def pulp_fiction_actors
  # practice using joins
  # display the id and name of all actors in the movie Pulp Fiction
  # hint: use 'select', 'joins', 'where'
<<<<<<< HEAD
  
=======
  Actor 
    .select(:id, :name)
    .joins(:movies)
    .where('title = \'Pulp Fiction\'')
>>>>>>> refs/remotes/origin/main
end

def uma_movies
  # practice using joins
  # display the id, title, and year of movies Uma Thurman has acted in
  # order them by ascending year
  # hint: use 'select', 'joins', 'where', and 'order'
<<<<<<< HEAD
  
=======
  Movie
    .select(:id, :title, :yr)
    .where(actors: {name: 'Uma Thurman'})
    .joins(:actors)
    .order(:yr)

>>>>>>> refs/remotes/origin/main
end