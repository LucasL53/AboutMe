//
//  ViewController.swift
//  AboutMe
//
//  Created by Hannie Kim on 8/1/21.
//

import UIKit

class AboutMeViewController: UIViewController {
    

    override func loadView() {
        view = MainView(buttonAction: { [weak self] in
            self?.displayAlert()
        })
        view.backgroundColor = .white
        
    }
    
    private func displayAlert(){
        
        let alertController = UIAlertController(title: nil, message: "Hello!", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
}

