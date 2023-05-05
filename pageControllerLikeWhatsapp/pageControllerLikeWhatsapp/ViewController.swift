//
//  ViewController.swift
//  pageControllerLikeWhatsapp
//
//  Created by Rajeev on 05/05/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mytable: UITableView!
    
    var a = ["rohit","sohan","man","con","hii ","mohan"]
    
    
    
    
    @IBOutlet weak var firstBottomConstraints: NSLayoutConstraint!
    @IBOutlet weak var secondBottomConstrains: NSLayoutConstraint!
    @IBOutlet weak var thirdBottmConstrains: NSLayoutConstraint!
    @IBOutlet weak var fourthBottomConstraints: NSLayoutConstraint!
    @IBOutlet weak var fifthBottomConstrainst: NSLayoutConstraint!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytable.delegate = self
        mytable.dataSource = self
    }
    
    @IBAction func firstTabClick(_ sender: UIButton) {
        
        view1.isHidden = false
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view2.isHidden = true
        
        firstBottomConstraints.constant = 5
        secondBottomConstrains.constant = 0
        thirdBottmConstrains.constant = 0
        fourthBottomConstraints.constant = 0
        fifthBottomConstrainst.constant = 0
        
        
    }
    
    


    @IBAction func secondTabClick(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = false
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        
        firstBottomConstraints.constant = 0
        secondBottomConstrains.constant = 5
        thirdBottmConstrains.constant = 0
        fourthBottomConstraints.constant = 0
        fifthBottomConstrainst.constant = 0

    }
    
    @IBAction func thirdTabClick(_ sender: Any) {
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = false
        view4.isHidden = true
        view5.isHidden = true
        
        firstBottomConstraints.constant = 0
        secondBottomConstrains.constant = 0
        thirdBottmConstrains.constant = 5
        fourthBottomConstraints.constant = 0
        fifthBottomConstrainst.constant = 0
        
    }
    
    
    @IBAction func fouthTabClick(_ sender: Any) {
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = false
        view5.isHidden = true
        
        firstBottomConstraints.constant = 0
        secondBottomConstrains.constant = 0
        thirdBottmConstrains.constant = 0
        fourthBottomConstraints.constant = 5
        fifthBottomConstrainst.constant = 0
    }
    
    @IBAction func fifthTabClick(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = false
        
        firstBottomConstraints.constant = 0
        secondBottomConstrains.constant = 0
        thirdBottmConstrains.constant = 0
        fourthBottomConstraints.constant = 0
        fifthBottomConstrainst.constant = 5
    }
    
    
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return a.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mytable.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        cell.textLabel?.text = a[indexPath.row]
        return cell
    }
    
    
}
