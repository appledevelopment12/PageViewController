//
//  ViewController.swift
//  contact4
//
//  Created by Rajeev on 28/04/23.
//

import UIKit
import Contacts
import ContactsUI



struct contactNamee
{
    let name:String
    
}

struct contactPhone
{
    let phone:String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

   
    @IBOutlet weak var tablee: UITableView!
    
    
    
    var models = [contactNamee]()
   
    
    
//    private let table:UITableView =
//     {
//        let table = UITableView()
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    
    
    let store = CNContactStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // view.addSubview(table)
//        table.delegate = self
//        table.dataSource = self
//        table.frame = view.bounds
        let authorize = CNContactStore.authorizationStatus(for: .contacts)
        if authorize == .notDetermined
        {
            store.requestAccess(for: .contacts) { chk, error in
                if error == nil
                {
                    self.getContactList()
                }
            }
        }else if authorize == .authorized{
            
            getContactList()
        }
    }
    
    
    func getContactList() {
        
                let  predicate = CNContact.predicateForContactsInContainer(withIdentifier: store.defaultContainerIdentifier())
                let contactt = try! store.unifiedContacts(matching: predicate, keysToFetch: [CNContactBirthdayKey as CNKeyDescriptor,CNContactFamilyNameKey as CNKeyDescriptor,CNContactGivenNameKey as CNKeyDescriptor,CNContactPhoneNumbersKey as CNKeyDescriptor,CNContactDatesKey as CNKeyDescriptor])
                let dat = DateFormatter()
                dat.dateFormat  = "MM/dd/yyyy"
        
        
        
        
        
                for con in contactt {
            
                  //  let contactPersonName = "Full name : \(con.givenName) \(con.familyName)"
                    
                    let model = contactNamee(name: con.givenName)
                    models.append(model)
                    tablee.reloadData()
//                    if(con.birthday != nil)
//                    {
//                        let dobDt = Calendar.current.date(from: con.birthday!)
//                        //print("Dob : \(dat.string(from: dobDt!))")
//                        let phonemodel = contactPhone(phone: dat.string(from: dobDt!))
//                        phonemodels.append(phonemodel)
//                    }
                   
        
                }
       
        
        
       
    }
        
        
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! MyTableViewCell
        cell.namelbl.text = models[indexPath.row].name
       
        return cell
    }



}
//
//
//import UIKit
//import Contacts
//
////class ViewController:UIViewController
//{
//    let store = CNContactStore()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let authorize = CNContactStore.authorizationStatus(for: .contacts)
//        if authorize == .notDetermined
//        {
//            store.requestAccess(for: .contacts) { chk, error in
//                if error == nil
//                {
//                    self.getContactList()
//                }
//            }
//        }else if authorize == .authorized{
//
//            getContactList()
//        }
//
//
//    }
//
//    func getContactList() {
//         print("KUMAR")
//        let  predicate = CNContact.predicateForContactsInContainer(withIdentifier: store.defaultContainerIdentifier())
//        let contact = try! store.unifiedContacts(matching: predicate, keysToFetch: [CNContactBirthdayKey as CNKeyDescriptor,CNContactFamilyNameKey as CNKeyDescriptor,CNContactGivenNameKey as CNKeyDescriptor,CNContactPhoneNumbersKey as CNKeyDescriptor,CNContactDatesKey as CNKeyDescriptor])
//        let dat = DateFormatter()
//        dat.dateFormat  = "MM/dd/yyyy"
//
//        for con in contact {
//            print("Rohit")
//            print("Full name : \(con.givenName) \(con.familyName)")
//            if(con.birthday != nil)
//            {
//                let dobDt = Calendar.current.date(from: con.birthday!)
//                print("Dob : \(dat.string(from: dobDt!))")
//            }
//        }
//    }
//}
//
