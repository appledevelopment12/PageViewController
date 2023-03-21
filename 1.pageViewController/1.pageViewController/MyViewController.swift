//
//  MyViewController.swift
//  1.pageViewController
//
//  Created by Rajeev on 14/03/23.
//

import UIKit

class MyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
  var    myIndex = 0
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return singerName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = singerName[indexPath.row]
        return cell
    }
    
    @IBOutlet var myTable: UITableView!
    
    var singerName = ["sonu sharma ","imran hasmi","imran khan ","hasmi","sonu Nigam"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
   
    


}

