//
//  PageDetailViewController.swift
//  pageViewConterller
//
//  Created by Rajeev on 30/06/23.
//

import UIKit

class PageDetailViewController: UIViewController {
    
    
    static var  sdata = [a]()
    
    var bca = [String]()
    var index:Int = 0
    @IBOutlet weak var imageView: UIImageView!
    
    

   var images =  ["ani1","ani2","ani3","ani4","ani5","ani1","ani2","ani3","ani4","ani5"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("my data    \(PageDetailViewController.sdata)")
       
        
        self.imageView.image = UIImage(named: images[index])
    }
    static  func getInsatance(index: Int) -> PageDetailViewController{
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PageDetailViewController") as! PageDetailViewController
        vc.index = index
        return vc
        
    }
    
}
