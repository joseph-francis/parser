//
//  ViewController.swift
//  parser
//
//  Created by Joseph on 5/11/17.
//  Copyright © 2017 Joseph. All rights reserved.
//

import UIKit
import Alamofire
import Kanna

class ViewController: UIViewController {

 
    
    @IBOutlet weak var webView: UIWebView!
    
    var niceArray = ["This", "That", "Hello", "Nice"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //downloadThings()
        
        let u = "https://www.nytimes.com/2017/05/10/us/politics/trump-comey-firing.html?partner=rss&emc=rss"
        let url = URL(string: u)
        let request = URLRequest(url: url!)
        
        
        
//        if let doc = HTML(url: url!, encoding: .ascii) {
//            
//            //print("\(doc)")
//            webView.loadHTMLString(doc.content!, baseURL: nil)
//            
//            
//        }
        do {
            let str = try String(contentsOf: url!, encoding: String.Encoding.ascii)
            print(str)
            webView.loadHTMLString(str, baseURL: nil)
        } catch {
            print(error.localizedDescription)
        }
        
        
        //webView.loadRequest(request)
        
        
        
        
    }
    
//    let url = "http://www.cnn.com/2017/05/11/politics/james-comey-firing-trump/index.html"
//    
//    func downloadThings() {
//        
//        let URLLink = URL(string: url)
//        Alamofire.request(URLLink!).responseJSON { (response) in
//            print("\(response)")
//        }
//    }
    

    
    
    

}

