//
//  ViewController.swift
//  TableView
//
//  Created by t2023-m0061 on 2023/08/08.
//

import UIKit

class ViewController: UIViewController {

    // var moviesArray: [Movie] = []
    
    var movieDataManager = DataManager()
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self // delegate 역할과 동일
        tableView.rowHeight = 120
        
        tableView.delegate = self
        
        movieDataManager.makeMovieData()
        // moviesArray = movieDataManager.getMovieData()
    }


    @IBAction func addButtonTapped(_ sender: UIBarButtonItem) {
        
        
        
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(#function)
        
        return movieDataManager.getMovieData().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(#function)
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell // 타입 캐스팅
        
        let array = movieDataManager.getMovieData()
        
        let movie = array[indexPath.row]
        
        
        cell.mainImageView.image = movie.movieImage
        cell.movieNameLabel.text = movie.movieName
        cell.descriptionLabel.text = movie.movieDescription
        cell.selectionStyle = .none

        return cell
    }
}

// add add add

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        performSegue(withIdentifier: "toDetail", sender: indexPath)
        
        
    }
    
    // perforSegue가 실행될 때 무조건 실행됨
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail" {
            let detailVC = segue.destination as! DetailViewController
            
            let array = movieDataManager.getMovieData()
            
            let indexPath = sender as! IndexPath
            
            detailVC.movieData = array[indexPath.row] // 우리가 전달하기 원하는 영화 데이터
        }
    }
    
    
    
}
