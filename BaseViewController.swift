//
//  BaseViewController.swift
//  TemporaryProject
//
//  Created by Everything Apple on 04/07/2023.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - Alerts

extension BaseViewController {
    
    func showSimpleAlert(_ title:String,_ message:String,_ vc:UIViewController)
    {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
    func showSimpleAlertwithDismissal(_ title:String,_ message:String,_ vc:UIViewController)
    {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:
        {_ in
            self.navigationController?.popToRootViewController(animated: true)
        }))
        vc.present(alert, animated: true)
    }
    
    func showSimpleAlertwithSinglePop(_ title:String,_ message:String,_ vc:UIViewController)
    {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler:
        {_ in
            self.navigationController?.popViewController(animated: true)
        }))
        vc.present(alert, animated: true)
    }

}
