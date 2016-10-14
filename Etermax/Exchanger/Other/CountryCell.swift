//
//  CountryCell.swift
//  Etermax
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class CountryCell : UITableViewCell {
    
    
    @IBOutlet weak var pict: UIImageView!
    @IBOutlet weak var otherInfo: UILabel! {
        didSet {
            otherInfo.font = ETFont.fontKozGoBoldSemiSmall
            otherInfo.textColor  = UIColor(customColor: UIColor.ETColor.pink)
        }
    }
    @IBOutlet weak var upLead: UILabel! {
        didSet {
            upLead.font = ETFont.fontKozGoHeavyRegular
        }
    }
    @IBOutlet weak var authorAndSection: UILabel! {
        didSet {
            authorAndSection.font = ETFont.fontKozGoBoldSemiSmall
            authorAndSection.textColor  = UIColor(customColor: UIColor.ETColor.pink)
        }
    }
    @IBOutlet weak var titleLead: UILabel! {
        didSet {
            titleLead.font = ETFont.fontKozGoMediumRegular
        }
    }
    
    override func awakeFromNib() {
        let constraint = NSLayoutConstraint(item: titleLead, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.greaterThanOrEqual, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1.0, constant: 60)
        self.contentView.addConstraints([constraint])
    }
    
    func setData(_ author: String ,title: String, pictPath: String, votes: Int, subreddits: String, comments: Int, date: String){
        titleLead.text = title
        authorAndSection.text = "author: \(author)"
        upLead.text = "\(votes)"
//        pict.kf.setImage(with: URL(string: pictPath))
        pict.kf.setImage(with: URL(string: pictPath), placeholder: UIImage(named: "wOaS8FKS"))
        otherInfo.text = "date: \(date), subreddit: \(subreddits) commnets: \(comments)"
    }
    
}


extension UIView {
    class func loadFromNibNamed(nibNamed: String, bundle : Bundle? = nil) -> UIView? {
        return UINib(
            nibName: nibNamed,
            bundle: bundle
            ).instantiate(withOwner: nil, options: nil)[0] as? UIView
    }
}
