//
//  ExchangeVC.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import PullToRefresh

class ExchangeVC: UIViewController {
    
    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var backButton: UIBarButtonItem! {
        didSet{
            backButton.target = self
            backButton.action = #selector(done)
        }
    }
    
    
    let refresher = PullToRefresh()
    var presenter: ExchangePresenter? = nil
    var modelTable: ModelTableView?
    
    deinit {
        tableView.removePullToRefresh(tableView.topPullToRefresh!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modelTable = ModelTableView (tbT: tableView)
        setupData()
        
        tableView.addPullToRefresh(refresher) {
            self.tableView.startRefreshing(at: Position.top)
            self.setupData()
        }
        
        backButton.action = #selector(done)
        
    }
    
    func setupData() {
        presenter?.updateFeeds({ (resonse, date) in
            self.modelTable?.setData(resonse)
            self.dateLabel.text = "last update: \(date)"
            self.tableView.endRefreshing(at: Position.top)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    func done() {
        self.navigationController?.popViewController(animated: true)
    }
}

