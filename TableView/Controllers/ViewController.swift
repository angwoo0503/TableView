//
//  ViewController.swift
//  TableView
//
//  Created by t2023-m0061 on 2023/08/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var moviesArray: [Movie] = [
        Movie(movieImage: UIImage(named: "batman.png"), movieName: "배트맨", movieDescription: "배트맨이 출연하는 영화"),
        Movie(movieImage: UIImage(named: "captain.png"), movieName: "캡틴 아메리카", movieDescription: "캡틴 아메리카가 출연하는 영화"),
        Movie(movieImage: UIImage(named: "ironman.png"), movieName: "아이언맨", movieDescription: "아이언맨이 출연하는 영화"),
        Movie(movieImage: UIImage(named: "thor.png"), movieName: "토르", movieDescription: "토르가 출연하는 영화"),
        Movie(movieImage: UIImage(named: "hulk.png"), movieName: "헐크", movieDescription: "헐크가 출연하는 영화")
    ]
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell // 타입 캐스팅
        
        indexPath.section // 그룹
        indexPath.row // 행
        
        cell.mainImageView.image = moviesArray[IndexPath.row]
        cell.movieNameLabel
        cell.descriptionLabel
        
        
        
        return cell
    }

}

