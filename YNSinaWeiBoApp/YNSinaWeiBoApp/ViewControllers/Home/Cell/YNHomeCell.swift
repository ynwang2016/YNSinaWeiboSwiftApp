//
//  YNHomeCell.swift
//  YNSinaWeiBoApp
//
//  Created by ynwang on 16/11/16.
//  Copyright © 2016年 ynwang. All rights reserved.
//

import UIKit

class YNHomeCell: UITableViewCell {

	var titleLabel:UILabel? //用户名称
	var timeLabel:UILabel?//时间
	var iconImage:UIImageView?//用户头像
	var discussImg:UIImageView?//评论图标
	var discussTitleLabel:UILabel?//评论标题
	var agreeImg:UIImageView?//点赞图标
	var agreeTitleLabel:UILabel?//点赞标题
	var discussButton:UIButton?//评论按钮
	var agreeButton:UIButton?//点赞按钮
	var contentLabel:UILabel? //微博内容
	
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
		
    }
	
	
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		
		//初始化UI
		createUI()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func createUI() {
		
		//头像
		iconImage = UIImageView()
		iconImage?.image = UIImage(named:"person")
		iconImage?.contentMode = UIViewContentMode.scaleAspectFit
		self.contentView.addSubview(iconImage!)
		iconImage?.layer.cornerRadius = 20
		iconImage?.layer.masksToBounds = true
		iconImage?.snp.makeConstraints({ (make) in
			make.left.equalTo(10)
			make.top.equalTo(15)
			make.width.height.equalTo(40)
		})
		
		//名称
		titleLabel = UILabel()
		titleLabel?.text = "文菲"
		titleLabel?.textColor = UIColor.black
		titleLabel?.font = FONT_30
		titleLabel?.textAlignment = NSTextAlignment.left
		self.contentView.addSubview(titleLabel!)
		titleLabel?.snp.makeConstraints({ (make) in
			make.left.equalTo(iconImage!.snp.right).offset(10)
			make.top.equalTo(iconImage!.snp.top).offset(5)
		})

		//时间
		timeLabel = UILabel()
		timeLabel?.text = "4小时前"
		timeLabel?.textColor = UIColor.gray
		timeLabel?.font = FONT_26
		timeLabel?.textAlignment = NSTextAlignment.left
		self.contentView.addSubview(timeLabel!)
		timeLabel?.snp.makeConstraints({ (make) in
			make.left.equalTo(titleLabel!.snp.left).offset(0)
			make.top.equalTo(titleLabel!.snp.bottom).offset(5)
		})
		
		//content
		contentLabel = UILabel()
		contentLabel?.text = "下雨了，蓝瘦"
		contentLabel?.textAlignment = NSTextAlignment.left
		contentLabel?.font = FONT_30
		contentLabel?.textColor = UIColor.black
		self.contentView.addSubview(contentLabel!)
		contentLabel?.snp.makeConstraints({ (make) in
			make.left.equalTo((iconImage?.snp.left)!)
			make.top.equalTo((iconImage?.snp.bottom)!).offset(10)
		})
	}

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
