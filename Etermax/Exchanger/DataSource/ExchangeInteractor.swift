//
//  ExchangeInteractor.swift
//  Etermax
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import Then

class ExchangeInteractor {
    
    var presenter: ExchangePresenter? = nil
    fileprivate var datasource: ExchangeDatasource? = nil
    fileprivate var date: String = ""
    
    init() {
        self.setupDatasource()
    }

    func setupDatasource() {
        self.datasource = ExchangeDatasource()
    }
    
    func getFeeds(_ completion: @escaping (_ response: [MReddit], _ date: String) -> ()) {
        
        guard let ds: ExchangeDatasource = self.datasource else {
            return
        }
        
        ds.getDataFromApiFixer { (status, response, date) in
            completion(response, date)
        }
        
    }
    
}
