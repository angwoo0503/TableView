import UIKit

class DataManager {
    var movieDataArray: [Movie] = []
    
    
    func makeMovieData() {
        movieDataArray = [
            Movie(movieImage: UIImage(named: "batman.png"), movieName: "배트맨", movieDescription: "배트맨이 출연하는 영화"),
            Movie(movieImage: UIImage(named: "captain.png"), movieName: "캡틴 아메리카", movieDescription: "캡틴 아메리카가 출연하는 영화"),
            Movie(movieImage: UIImage(named: "ironman.png"), movieName: "아이언맨", movieDescription: "아이언맨이 출연하는 영화"),
            Movie(movieImage: UIImage(named: "thor.png"), movieName: "토르", movieDescription: "토르가 출연하는 영화"),
            Movie(movieImage: UIImage(named: "hulk.png"), movieName: "헐크", movieDescription: "헐크가 출연하는 영화")
        ]
    }
    
    func getMovieData() -> [Movie] {
        return movieDataArray
    }
    
    func updateMovieData() {
        let movie = Movie(movieImage: UIImage(named: "spiderman2.png"), movieName: "스파이더맨2", movieDescription: "스파이더맨 시즌2")
        movieDataArray.append(movie)
    }
    
    
}
