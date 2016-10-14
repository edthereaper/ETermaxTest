//
//  ViewController.swift
//  CurrencyExchange
//
//  Created by Eduardo Rodriguez on 8/29/16.
//  Copyright © 2016 Eduardo Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterButton: UIButton! {
        didSet {
            enterButton.do {
                $0.setTitleColor(UIColor.white, for: .normal)
                $0.titleLabel?.font = ETFont.fontKozGoBoldSubtitle
                $0.addTarget(self, action: #selector(enterAction), for: .touchUpInside)
            }
        }
    }
    @IBOutlet weak var viewButton: UIView! {
        didSet{
            viewButton.do {
                $0.backgroundColor = UIColor(customColor: UIColor.ETColor.magenta)
            }
        }
    }
    @IBOutlet weak var viewButtonAnimation: UIView! {
        didSet {
            viewButtonAnimation.do {
                $0.backgroundColor = UIColor(customColor: UIColor.ETColor.magenta)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        enterButton.layer.cornerRadius = enterButton.frame.size.height / 2
        viewButton.layer.cornerRadius = viewButton.frame.size.height / 2
        viewButtonAnimation.layer.cornerRadius = viewButton.frame.size.height / 2
        self.animateEntering()
    }
    
    func enterAction() {
        let exchange = DInjection.exchange()
        self.navigationController?.pushViewController(exchange, animated: true)
    }

}

extension ViewController {
    func animateEntering() {
        UIView.animate(withDuration: 1.0, delay: 0.0, options: [.repeat], animations: {
            self.viewButtonAnimation.do {
                $0.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                $0.alpha = 0.0
            }
            }, completion: { _ in
                self.viewButtonAnimation.do{
                    $0.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    $0.alpha = 1.0
                }
            })
    }
}

