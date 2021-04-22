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
        
        let nib = UINib.init(nibName: "BlogTableViewCell", bundle: nil)
        feed.register(nib, forCellReuseIdentifier: "blogCell")
        
        vm.addFeedForTest()
        
        feed.delegate = self
        feed.dataSource = self
        
        
        let searchButton = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        navigationItem.rightBarButtonItem = searchButton
        
        
        let titleImageView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        titleImageView.contentMode = .scaleAspectFit
        
        let image = UIImage.init(named: "centerBarButton")
        titleImageView.image =  image
        
        navigationItem.titleView = titleImageView

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.getFeedCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "blogCell", for: indexPath) as? BlogTableViewCell
        cell?.formatCell()
        cell?.setCell(blogPost: vm.feedArray[indexPath.row])
        cell?.projectImage.image = UIImage.init(named: "anitaBefore")
        cell?.profImage.image = UIImage.init(named: "anitaProf")
        return cell!
    }
    
    

   

}
