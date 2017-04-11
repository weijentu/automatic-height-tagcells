//
//  AHTagView.swift
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-09-21.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

import UIKit

class AHTagView: UIView {
    
    lazy var label = { () -> UILabel in
        let label = UILabel()
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupViews()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    private func setupViews() {
        self.backgroundColor = UIColor.white
        self.addSubview(self.label)
        self.setupConstraints()
    }
    
    private func setupConstraints() {
        var constraints = [NSLayoutConstraint]()
        constraints.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|-4.0-[label]-4.0-|",
                                                                      options: .directionLeadingToTrailing,
                                                                      metrics: nil,
                                                                      views: ["label" : self.label]))
        constraints.append(NSLayoutConstraint(item: self.label,
                                              attribute: .height,
                                              relatedBy: .greaterThanOrEqual,
                                              toItem: nil,
                                              attribute: .height,
                                              multiplier: 1,
                                              constant: 24))
        constraints.append(NSLayoutConstraint(item: self.label,
                                              attribute: .top,
                                              relatedBy: .equal,
                                              toItem: self,
                                              attribute: .top,
                                              multiplier: 1,
                                              constant: 6))
        constraints.append(NSLayoutConstraint(item: self,
                                              attribute: .bottom,
                                              relatedBy: .equal,
                                              toItem: self.label,
                                              attribute: .bottom,
                                              multiplier: 1,
                                              constant: 6))
        NSLayoutConstraint.activate(constraints)
    }
    

    open func image() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 0)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        self.layer.render(in: context)
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else {
            return nil
        }
        UIGraphicsEndImageContext()
        return image
    }
}
