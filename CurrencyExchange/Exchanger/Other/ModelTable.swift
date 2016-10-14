//
//  ModelTable.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class ModelTableView: NSObject {
    
    var tb: UITableView?
    var modelData: [MReddit] = [] {
        didSet {
            self.tb?.reloadData()
        }
    }
    var keys: [String] = []
    var favoritesKeys: [String] = []
    
    init(tbT: UITableView){
        super.init()
        self.tb = tbT
        self.setupTableView()
    }
    
    func setupTableView() {
        self.tb?.delegate = self
        self.tb?.dataSource = self
        self.tb?.rowHeight = UITableViewAutomaticDimension
        self.tb?.estimatedRowHeight = 120
        self.tb?.register(UINib(nibName: "CountryCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    func setData(_ casualData: [MReddit]) {
        self.modelData.removeAll()
        self.modelData = casualData
    }
    
}

extension ModelTableView: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.modelData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CountryCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CountryCell
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        let post: MReddit = self.modelData[indexPath.row]
        cell.setData(post.author, title: post.title, pictPath: post.thumbnail, votes: post.ups, subreddits: post.subreddit, comments: post.num_comments, date: Date.formatRedditDate(dateInterval: post.created))
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
