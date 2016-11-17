//
//  YNRootViewController.swift
//  YNSinaWeiBoApp
//
//  Created by ynwang on 16/11/16.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNRootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()


		addChildViewControllers()
	}
	
	func addChildViewControllers() {
		let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.red]
		
		//1.首页
		let home = YNHomeViewController()
		var image1:UIImage = UIImage(named:"tab_achievement")!
		var selectedImage1:UIImage = UIImage(named:"tab_achievement_pre")!
		image1 = image1.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
		selectedImage1 = selectedImage1.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
		let item1 : UITabBarItem = UITabBarItem(title:"首页", image:image1, selectedImage:selectedImage1)
		home.tabBarItem = item1
		  (item1).setTitleTextAttributes((titleDict as! [String : AnyObject]), for: UIControlState.selected)
		
		//2.消息
		let message = YNMessageViewController()
		var image2:UIImage = UIImage(named:"tab_newspaper")!
		var selectedImage2:UIImage = UIImage(named:"tab_newspaper_pre")!
		image2 = image2.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
		selectedImage2 = selectedImage2.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
		let item2 : UITabBarItem = UITabBarItem(title:"消息", image:image2, selectedImage:selectedImage2)
		message.tabBarItem = item2
		(item2).setTitleTextAttributes((titleDict as! [String : AnyObject]), for: UIControlState.selected)
		
		//3.addnew
		//4.发现
		let discover = YNDiscoverViewController()
		var image4:UIImage = UIImage(named:"tab_mine")!
		var selectedImage4:UIImage = UIImage(named:"tab_mine_pre")!
		image4 = image4.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
		selectedImage4 = selectedImage4.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
		let item4 : UITabBarItem = UITabBarItem(title:"发现", image:image4, selectedImage:selectedImage4)
		discover.tabBarItem = item4
		(item4).setTitleTextAttributes((titleDict as! [String : AnyObject]), for: UIControlState.selected)
		
		//5.我
		let me = YNMeViewController()
		var image5:UIImage = UIImage(named:"tab_client")!
		var selectedImage5:UIImage = UIImage(named:"tab_client_pre")!
		image5 = image5.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
		selectedImage5 = selectedImage5.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
		let item5 : UITabBarItem = UITabBarItem(title:"我", image:image5, selectedImage:selectedImage5)
		me.tabBarItem = item5
		(item5).setTitleTextAttributes((titleDict as! [String : AnyObject]), for: UIControlState.selected)
		
		let controllersArray = [home, message, discover, me]
		self.viewControllers = controllersArray
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
