//
//  Constans.swift
//  Etermax
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation

enum ConstantsString: String {
    // use int Request.swift
    case ETError = "error"
    // use int ExchangeInteractor.swift
    case ETBackup = "backup"
    case keyRateCurrency = "rates"
    case dateLastUpdate = "date"
    case alreadyLoaded = "Loaded"
    case favoritesTitle = "FAVORITES"
    case currencyTitle = "CURRECNCY"
}

enum MapperKeys: String {
    case title = "title"
    case author = "author"
    case created = "created"
    case thumbnail = "thumbnail"
    case num_comments = "num_comments"
    case subreddit = "subreddit"
    case ups = "ups"
}

enum DefaultCountries: String {
    case GBP = "GBP"
    case EUR = "EUR"
    case JPY = "JPY"
    case BRL = "BRL"
    case EMPTY = ""
}

enum LocalStorage: String {
    case Currency = "Currency"
    case lastUpdate = "date"
}

enum Storyboards: String {
    case exchange = "Main"
}
