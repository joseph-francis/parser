//
//  CustomSegue.swift
//  parser
//
//  Created by Joseph on 5/14/17.
//  Copyright © 2017 Joseph. All rights reserved.
//

import UIKit

class CustomSegue: UIStoryboardSegue {
    
    
    
    override func perform() {
        
        if self.identifier == "send" {
            coverTransition()
        } else {
            reverse()
        }
        
        
    }
    
    func coverTransition() {
        
        let sourceVC = self.source
        let destinationVC = self.destination
        
        let sourceVCView = sourceVC.view
        destinationVC.view.frame.origin.y = sourceVCView!.frame.size.height
        
        print(destinationVC.view.bounds.origin.y)
        
        sourceVCView?.addSubview(destinationVC.view)
        
        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: .curveEaseInOut, animations: {
            
            destinationVC.view.frame.origin.y = 0
            sourceVC.view.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
            
            
        }) { (true) in
            
            sourceVC.present(destinationVC, animated: false, completion: nil)
            
            
        }
        
        
        
    }
    
    
    func reverse() {
        
        let sourceVC = self.source
        
        
        sourceVC.dismiss(animated: true, completion: nil)
        
        
        
        
    }
    
    
    
    
    
}

















