//
//  Fonts.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit

enum FontSize: CGFloat {
    case small = 7
    case semiSmall = 9
    case regular = 17
    case subtitle = 22
    case title = 26
}

struct ETFont {
    static let fontKozGoBoldSmall = UIFont(name: "KozGoPr6N-Bold", size: FontSize.small.rawValue)
    static let fontKozGoBoldSemiSmall = UIFont(name: "KozGoPr6N-Bold", size: FontSize.semiSmall.rawValue)
    static let fontKozGoBoldRegular = UIFont(name: "KozGoPr6N-Bold", size: FontSize.regular.rawValue)
    static let fontKozGoBoldSubtitle = UIFont(name: "KozGoPr6N-Bold", size: FontSize.subtitle.rawValue)
    static let fontKozGoBoldTitle = UIFont(name: "KozGoPr6N-Bold", size: FontSize.title.rawValue)
    
    static let fontKozGoRegularSmall = UIFont(name: "KozGoPr6N-Regular", size: FontSize.small.rawValue)
    static let fontKozGoRegularSemiSmall = UIFont(name: "KozGoPr6N-Regular", size: FontSize.semiSmall.rawValue)
    static let fontKozGoRegularRegular = UIFont(name: "KozGoPr6N-Regular", size: FontSize.regular.rawValue)
    static let fontKozGoRegularSubtitle = UIFont(name: "KozGoPr6N-Regular", size: FontSize.subtitle.rawValue)
    static let fontKozGoRegularTitle = UIFont(name: "KozGoPr6N-Regular", size: FontSize.title.rawValue)
    
    static let fontKozGoMediumSmall = UIFont(name: "KozGoPr6N-Medium", size: FontSize.small.rawValue)
    static let fontKozGoMediumSemiSmall = UIFont(name: "KozGoPr6N-Medium", size: FontSize.semiSmall.rawValue)
    static let fontKozGoMediumRegular = UIFont(name: "KozGoPr6N-Medium", size: FontSize.regular.rawValue)
    static let fontKozGoMediumSubtitle = UIFont(name: "KozGoPr6N-Medium", size: FontSize.subtitle.rawValue)
    static let fontKozGoMediumTitle = UIFont(name: "KozGoPr6N-Medium", size: FontSize.title.rawValue)
    
    static let fontKozGoLightSmall = UIFont(name: "KozGoPr6N-Light", size: FontSize.small.rawValue)
    static let fontKozGoLightSemiSmall = UIFont(name: "KozGoPr6N-Light", size: FontSize.semiSmall.rawValue)
    static let fontKozGoLightRegular = UIFont(name: "KozGoPr6N-Light", size: FontSize.regular.rawValue)
    static let fontKozGoLightSubtitle = UIFont(name: "KozGoPr6N-Light", size: FontSize.subtitle.rawValue)
    static let fontKozGoLightTitle = UIFont(name: "KozGoPr6N-Light", size: FontSize.title.rawValue)
    
    static let fontKozGoHeavySmall = UIFont(name: "KozGoPr6N-Heavy", size: FontSize.small.rawValue)
    static let fontKozGoHeavySemiSmall = UIFont(name: "KozGoPr6N-Heavy", size: FontSize.semiSmall.rawValue)
    static let fontKozGoHeavyRegular = UIFont(name: "KozGoPr6N-Heavy", size: FontSize.regular.rawValue)
    static let fontKozGoHeavySubtitle = UIFont(name: "KozGoPr6N-Heavy", size: FontSize.subtitle.rawValue)
    static let fontKozGoHeavyTitle = UIFont(name: "KozGoPr6N-Heavy", size: FontSize.title.rawValue)
    
}
