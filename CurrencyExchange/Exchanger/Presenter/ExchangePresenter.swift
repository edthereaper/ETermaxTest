//
//  ExchangePresenter.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation

class ExchangePresenter {
    
    var interactor: ExchangeInteractor?
    var currentVC: ExchangeVC?
    
    init() {
        
    }
    
    func updateFeeds(_ completion:@escaping (_ resonse: [MReddit], _ date: String) -> ()) {
        guard let interactor = interactor else {
            return
        }
        interactor.getFeeds { (response, date) in
            completion(response, date)
        }
    }
    
}




