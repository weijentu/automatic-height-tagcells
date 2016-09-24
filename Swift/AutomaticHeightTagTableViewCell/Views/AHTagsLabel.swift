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
    var URL: NSURL?
    var enabled: Bool

    func attributedTitle() -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .center
        paragraphStyle.firstLineHeadIndent = 10
        paragraphStyle.headIndent = 10
        paragraphStyle.tailIndent = 10
        
        let attributes = [
            NSParagraphStyleAttributeName  : paragraphStyle,
            NSFontAttributeName            : UIFont.boldSystemFont(ofSize: 14)
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
                                                    withHorizontalFittingPriority: UILayoutPriorityFittingSizeLevel,
                                                    verticalFittingPriority: UILayoutPriorityFittingSizeLevel)
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
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        mutableString.addAttribute(NSParagraphStyleAttributeName,
                                   value: paragraphStyle,
                                   range: NSRange(location: 0, length: mutableString.length))
        self.attributedText = mutableString
    }
    
}
