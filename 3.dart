void main() {
  Movie film1 = Movie('Casino Royale', 'Eon Productions', 'PG13');
  Movie film2 = Movie("Shrek", "DreamWorks", "PG");
  Movie film3 = Movie("Harry Potter", "Warner Bros", "PG13");
  Movie film4 = Movie("The Lion King", "Disney");
  List<Movie> movies = [film1, film2, film3, film4];
  List<Movie> pgMovies = Movie.getPG(movies);

  print("Movies with 'PG' rating:");
  for (var movie in pgMovies) {
    print("${movie.title} - ${movie.rating}");
  }
}

class Movie {
  String title;
  String studio;
  String rating;

  Movie(this.title, this.studio, [this.rating = 'PG']) {}
  void viewDetails() {
    print('the movie name is $title');
    print("it's studio is $studio");
    print("it's rating is $rating");
  }

  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> pgMovies = [];
    for (var movie in movies) {
      if (movie.rating.contains("PG")) {
        pgMovies.add(movie);
      }
      pgMovies = pgMovies.toList();
    }
    return (pgMovies);
  }
}
