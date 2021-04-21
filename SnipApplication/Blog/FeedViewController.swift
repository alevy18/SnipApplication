//
//  FeedViewController.swift
//  SnipApplication
//
//  Created by Aaron Levy on 4/21/21.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let vm = FeedViewModel()
    
    @IBOutlet weak var feed: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feed.delegate = self
        feed.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.getFeedCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.TableViewCell.blogCellIdentifier ) as? BlogTableViewCell
        return cell!
    }
    
    

   

}
