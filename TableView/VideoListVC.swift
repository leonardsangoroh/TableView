//
//  VideoListVC.swift
//  TableView
//
//  Created by Lee Sangoroh on 14/04/2024.
//

import UIKit

class VideoListVC: UIViewController {
    
    var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        // set table row height
        tableView.rowHeight = 100
        //register cells
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
