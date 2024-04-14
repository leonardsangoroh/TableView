//
//  VideoListVC.swift
//  TableView
//
//  Created by Lee Sangoroh on 14/04/2024.
//

import UIKit

class VideoListVC: UIViewController {
    
    var tableView = UITableView()
    var videos:[Video] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        videos = fetchData()
        title = "PL Results"
        
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        // set table row height
        tableView.rowHeight = 100
        //register cells
        tableView.register(VideoCell.self, forCellReuseIdentifier: "VideoCell")
        // set constraints
        tableView.pin(to: view)
        
    }
    
    
    func setTableViewDelegate() {
        // setting VideoListVC as the delegate and data source of the table view
        // this can only happen if VideoListVC conforms to UITableViewDelegate and UITableViewDataSource
        tableView.delegate = self
        tableView.dataSource = self
    }

}


extension VideoListVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        // what index in the array do I want
        let video = videos[indexPath.row]
        // call the set() function in VideoCell
        cell.set(video: video)
        return cell
    }
    
    
}

extension VideoListVC {
    func fetchData() -> [Video] {
        let videoOne = Video(image: Images.PL, title: "0 - ARSENAL \n2 - ASTON VILLA")
        let videoTwo = Video(image: Images.PLTwo, title: "0 - WEST HAM \n2 - FULHAM")
        let videoThree = Video(image: Images.PLThree, title: "0 - LIVERPOOL  \n1 - CRYSTAL PALACE")
        let videoFour = Video(image: Images.PLFour, title: "2 - BOURNMOUTH \n2 - MAN UTD")
        let videoFive = Video(image: Images.PL, title: "2 - NOTT'M FOREST \n2 - WOLVES")
        let videoSix = Video(image: Images.PLTwo, title: "5 - MANCHESTER CITY \n1 - LUTON")
        let videoSeven = Video(image: Images.PLThree, title: "1 - BURNLEY \n1 - BRIGHTON")
        let videoEight = Video(image: Images.PLFour, title: "1 - BRENTFORD \n0 - SHEFFIELD UTD")
        let videoNine = Video(image: Images.PL, title: "4 - NEWCASTLE  \n0 - SPURS")
        return [videoOne, videoTwo, videoThree, videoFour, videoFive, videoSix, videoSeven, videoEight, videoNine]
    }
}
