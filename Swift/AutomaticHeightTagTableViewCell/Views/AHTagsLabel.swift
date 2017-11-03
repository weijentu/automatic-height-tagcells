//
//  AHTagsLabel.swift
//  AutomaticHeightTagTableViewCell
//
//  Created by WEI-JEN TU on 2016-09-21.
//  Copyright © 2016 Cold Yam. All rights reserved.
//

import UIKit

struct AHTag {
    var category: String
    var title: String
    var color: UIColor
    var url: URL?
    var enabled: Bool
    
    init(dictionary: [String : Any]) {
        var value: UInt32 = 0
        let scanner = Scanner(string: (dictionary["COLOR"] as! String))
        scanner.scanHexInt32(&value)
        let color = UIColor(red: CGFloat((value & 0xFF0000) >> 16) / 255.0,
                            green: CGFloat((value & 0x00FF00) >> 8) / 255.0,
                            blue: CGFloat(value & 0x0000FF) / 255.0,
                            alpha: 1.0)
        self.color = color
        self.category = (dictionary["CATEGORY"] as! String)
        self.title = (dictionary["TITLE"] as! String)
        self.url = URL(string: (dictionary["URL"] as! String))
        self.enabled = (dictionary["ENABLED"] as! Bool)
    }
    
    func attributedTitle() -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        if #available(iOS 11.0, *) {
            paragraphStyle.headIndent = paragraphStyle.firstLineHeadIndent
            paragraphStyle.tailIndent = paragraphStyle.firstLineHeadIndent
        } else {
            paragraphStyle.firstLineHeadIndent = 10
            paragraphStyle.headIndent = 10
            paragraphStyle.tailIndent = 10
        }
        
        let attributes = [
            NSAttributedStringKey.paragraphStyle  : paragraphStyle,
            NSAttributedStringKey.font            : UIFont.boldSystemFont(ofSize: 14)
        ]
        return NSAttributedString(string: self.title, attributes: attributes)
    }

}

class AHTagsLabel: UILabel {

    open var tags: [AHTag]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
        self.setupGesture()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setup()
        self.setupGesture()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    private func setup() {
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.textAlignment = .left
        self.backgroundColor = UIColor.white
        self.isUserInteractionEnabled = true
    }
    
    private func setupGesture() {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(AHTagsLabel.tap(recognizer:)))
        self.addGestureRecognizer(recognizer)
    }
    
    @objc private func tap(recognizer: UITapGestureRecognizer) {
        guard let label = recognizer.view as? UILabel else {
            return
        }
        let container = NSTextContainer(size: label.frame.size)
        container.lineFragmentPadding = 0.0
        container.lineBreakMode = label.lineBreakMode
        container.maximumNumberOfLines = label.numberOfLines
        
        let manager = NSLayoutManager()
        manager.addTextContainer(container)
        
        guard let attributedText = label.attributedText else {
            return
        }
        let storage = NSTextStorage(attributedString: attributedText)
        storage.addLayoutManager(manager)
        
        let touchPoint = recognizer.location(in: label)
        let indexOfCharacter = manager.characterIndex(for: touchPoint,
                                                      in: container,
                                                      fractionOfDistanceBetweenInsertionPoints: nil)
        guard var tags = self.tags else {
            return
        }
        var tag = tags[indexOfCharacter]
        tag.enabled = !tag.enabled
        tags[indexOfCharacter] = tag
        self.setTags(tags)
    }
    
    open func setTags(_ tags: [AHTag]) {
        self.tags = tags

        let mutableString = NSMutableAttributedString()
        let cell = UITableViewCell()
        for (_, tag) in tags.enumerated() {
            let view = AHTagView()
            view.label.attributedText = tag.attributedTitle()
            view.label.backgroundColor = tag.enabled ? tag.color : UIColor.lightGray
            let size = view.systemLayoutSizeFitting(view.frame.size,
                                                    withHorizontalFittingPriority: UILayoutPriority.fittingSizeLevel,
                                                    verticalFittingPriority: UILayoutPriority.fittingSizeLevel)
            view.frame = CGRect(x: 0, y: 0, width: size.width + 20, height: size.height)
            cell.contentView.addSubview(view)
            
            let image = view.image()
            let attachment = NSTextAttachment()
            attachment.image = image
            
            let attrString = NSAttributedString(attachment: attachment)
            mutableString.beginEditing()
            mutableString.append(attrString)
            mutableString.endEditing()
        }
        
        self.attributedText = mutableString
    }
    
}
