//
//  firstCollectionViewCell.swift
//  abc
//
//  Created by Rajeev on 27/06/23.
//

import UIKit

class firstCollectionViewCell: UICollectionViewCell
{
    
    @IBOutlet weak var cellImage: UIImageView?
    
    override func awakeFromNib() {
      //  setUpCell(_d: <#a#>)
    }
    
    func setUpCell(_d:a)
    {
        cellImage!.image = UIImage(named: _d.imgNamee)  
    }
   
    
    
}
