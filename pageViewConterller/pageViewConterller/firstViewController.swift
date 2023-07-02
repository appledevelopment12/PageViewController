//
//  firstViewController.swift
//  pageViewConterller
//
//  Created by Rajeev on 30/06/23.
//

import UIKit

class firstViewController: UIViewController {
    
    
    

    @IBOutlet var firstColellectionView:UICollectionView!
     
     override func viewDidLoad() {
         super.viewDidLoad()

     }


 }
 extension firstViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
 {
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return abc.instance.getdata().count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = firstColellectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! firstCollectionViewCell
         let index_Path = abc.instance.getdata()[indexPath.row]
         cell.setUpCell(_d: index_Path)
         return cell
     }
    // return firstCollectionViewCell
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
     {
         return 5
     }
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
     {
         return 5
     }
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         
         return CGSize(width: collectionView.frame.size.width/3-5, height: collectionView.frame.size.height/5-5)
     }
     
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         let category = abc.instance.getdata()[indexPath.row]

         PageDetailViewController.sdata = abc.instance.getdata()
         performSegue(withIdentifier: "top", sender: category)
     }
    
     
     
 }

