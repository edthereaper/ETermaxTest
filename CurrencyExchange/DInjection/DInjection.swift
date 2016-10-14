//
//  DInjection.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import Swinject
import SwinjectStoryboard

class DInjection {
    
    class func exchange() -> ExchangeVC {
        let container = getContainer()
        let sb = getStoryboard(container: container)
        let controller: ExchangeVC = sb.instantiateViewController(withIdentifier: "ExchangeVC") as! ExchangeVC
        return controller

    }
    
    class func getContainer() -> Container {
        let container = Container()
        container.registerForStoryboard(ExchangeVC.self) { resolve, view in
            let presenter = resolve.resolve(ExchangePresenter.self)
            let interactor = resolve.resolve(ExchangeInteractor.self)
            
            interactor?.presenter = presenter
            
            presenter?.interactor = interactor
            presenter?.currentVC = view
            
            view.presenter = presenter
 
        }
        
        container.register(ExchangePresenter.self) { _ in ExchangePresenter() }
        
        container.register(ExchangeInteractor.self) { _ in ExchangeInteractor() }
    
        
        return container
    }
    
    class func getStoryboard(container: Container) -> SwinjectStoryboard {
        let sb = SwinjectStoryboard.create(
            name: Storyboards.exchange.rawValue, bundle: nil, container: container)
        return sb
    }

}
