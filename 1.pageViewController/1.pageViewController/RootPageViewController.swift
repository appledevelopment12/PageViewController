//
//  RootPageViewController.swift
//  1.pageViewController
//
//  Created by Rajeev on 13/03/23.
//

import UIKit
  
  
class RootPageViewController: UIPageViewController {
      
    lazy var vcList:[UIViewController] = {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = storyboard.instantiateViewController(identifier: "FirstVC")
        let secondVC = storyboard.instantiateViewController(identifier: "SecondVC")
          
        return [firstVC, secondVC]
          
    }()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.dataSource = self
        if let vc = vcList.first{
            self.setViewControllers([vc], direction: .forward, animated: true, completion: nil)
        }
          
    }
}
  
  
extension RootPageViewController : UIPageViewControllerDataSource{
      
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index - 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
          
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
    guard let index = vcList.lastIndex(of: viewController) else { return nil }
        let previousIndex = index + 1
        guard previousIndex >= 0 else {return nil}
        guard previousIndex < vcList.count else {return nil}
        return vcList[previousIndex]
  
  
    }
}
