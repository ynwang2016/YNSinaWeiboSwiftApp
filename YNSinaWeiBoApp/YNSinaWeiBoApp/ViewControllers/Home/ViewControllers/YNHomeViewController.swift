//
//  YNHomeViewController.swift
//  YNSinaWeiBoApp
//
//  Created by ynwang on 16/11/16.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

	var list:UITableView?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		list = UITableView()
		self.view.addSubview(list!)
		list?.delegate = self
		list?.dataSource = self
		list?.snp.makeConstraints({ (make) in
			make.left.top.right.bottom.equalTo(0)
		})
    }

	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let identifer = "cell"
		var cell:YNHomeCell! = (tableView.dequeueReusableCell(withIdentifier: identifer) as? YNHomeCell)
		if cell == nil {
			cell = YNHomeCell(style:  .default, reuseIdentifier:  identifer)
		}
		return cell
		
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 100
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
