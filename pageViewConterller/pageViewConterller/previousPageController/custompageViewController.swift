//
//  custompageViewController.swift
//  pageViewConterller
//
//  Created by Rajeev on 30/06/23.
//

import UIKit

class custompageViewController: UIPageViewController {

    
    var individualPageViewControllerList = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        self.delegate = self
        self.dataSource = self
        
        self.view.backgroundColor =  .systemBlue
        
        individualPageViewControllerList = [
            PageDetailViewController.getInsatance(index: 0),
            PageDetailViewController.getInsatance(index: 1),
            PageDetailViewController.getInsatance(index: 2),
            PageDetailViewController.getInsatance(index: 3),
            PageDetailViewController.getInsatance(index: 4),
            PageDetailViewController.getInsatance(index: 5),
            PageDetailViewController.getInsatance(index: 6),
            PageDetailViewController.getInsatance(index: 7),
            PageDetailViewController.getInsatance(index: 8),
            PageDetailViewController.getInsatance(index: 9)
           // PageDetailViewController.getInsatance(index: 10)
            
        ]
        
        setViewControllers([individualPageViewControllerList[0]], direction: .forward, animated: true,completion: nil)
        
    }


}
extension custompageViewController:UIPageViewControllerDataSource
{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let indexOfCurrentPageViewController = individualPageViewControllerList.firstIndex(of: viewController)!
        if indexOfCurrentPageViewController == 0
        {
            return nil
        }
        else
        {
            return individualPageViewControllerList[indexOfCurrentPageViewController - 1]
            
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentindexOfPageControllerList = individualPageViewControllerList.firstIndex(of:viewController)!
        
        if currentindexOfPageControllerList == individualPageViewControllerList.count - 1

        {
            return nil
        }
        else
        {
            return individualPageViewControllerList[currentindexOfPageControllerList + 1]
        }
    }
    
    
}
extension custompageViewController:UIPageViewControllerDelegate
{
        func presentationCount(for pageViewController: UIPageViewController) -> Int {
            
            return 5
        }
        func presentationIndex(for pageViewController: UIPageViewController) -> Int {
            
            return 0 }
    
}
