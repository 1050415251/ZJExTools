//
//  ZJKit+UI.swift
//  FriendlyBrowser
//
//  Created by 李天 on 2019/10/22.
//  Copyright © 2019 Anchoriter. All rights reserved.
//

import Foundation



extension UIView: ZJLayout {
    
    @discardableResult
    func set(bgcolor: UIColor) -> UIView {
//        if self.backgroundColor == bgcolor {
            self.backgroundColor = bgcolor
//        }
        return self
    }
    
    @discardableResult
    func set(alpha: CGFloat) -> UIView {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    func set(clipsToBounds: Bool) -> UIView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set(isHideen: Bool) -> UIView {
        self.isHidden = isHideen
        return self
    }
    
    @discardableResult
    func set(frame: CGRect) -> UIView {
        if self.frame != frame {
            self.frame = frame
        }
        return self
    }
    
    @discardableResult
    func set(origin: CGPoint) -> UIView {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set(x: CGFloat) -> UIView {
        if self.frame.origin.x != x {
            var f = self.frame
            f.origin.x = x
            self.frame = f
        }
        return self
    }
    
    @discardableResult
    func set(y: CGFloat) -> UIView {
        if self.frame.origin.y != y {
            var f = self.frame
            f.origin.y = y
            self.frame = f
        }
        return self
    }
    
    @discardableResult
    func set(size: CGSize) -> UIView {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set(width: CGFloat) -> UIView {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set(height: CGFloat) -> UIView {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set(isUserInteractionEnabled: Bool) -> UIView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
}


//MARK: UILabel
extension ZJLayout where Self: UILabel {
    
    @discardableResult
    func set_Label(font: UIFont) -> UILabel {
        self.font = font
        return self
    }
    
    @discardableResult
    func set_Label(textAlignment: NSTextAlignment) -> UILabel {
        if self.textAlignment != textAlignment {
            self.textAlignment = textAlignment
        }
        return self
    }
    
    @discardableResult
    func set_Label(clipsToBounds: Bool) -> UILabel {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_Label(textColor: UIColor) -> UILabel {
        self.textColor = textColor
        return self
    }
    
    @discardableResult
    func set_Label(text: String?) -> UILabel {
        self.text = text
        return self
    }
    
    @discardableResult
    func set_Label(numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func set_Label(preferredMaxLayoutWidth: CGFloat) -> UILabel {
        self.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
    
    //common
    @discardableResult
    func set_Label(bgcolor: UIColor) -> UILabel {
        
        return self .set(bgcolor: bgcolor) as! UILabel
    }
    
    
    @discardableResult
    func set_Label(alpha: CGFloat) -> UILabel {
        
        return self .set(alpha: alpha) as! UILabel
    }
    
    @discardableResult
    func set_Label(isHideen: Bool) -> UILabel {
        
        return self .set(isHideen: isHideen) as! UILabel
    }
    
    @discardableResult
    func set_Label(frame: CGRect) -> UILabel {
        
        return self .set(frame: frame) as! UILabel
    }
    
    @discardableResult
    func set_Label(origin: CGPoint) -> UILabel {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_Label(x: CGFloat) -> UILabel {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_Label(isUserInteractionEnabled: Bool) -> UILabel {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_Label(y: CGFloat) -> UILabel {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_Label(size: CGSize) -> UILabel {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_Label(width: CGFloat) -> UILabel {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_Label(height: CGFloat) -> UILabel {
        self.frame.size.height = height
        return self
    }
}



//MARK: UIButton
extension ZJLayout where Self: UIButton {
    
    @discardableResult
    func set_Button(font: UIFont) -> UIButton {
        self.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func set_Button(isUserInteractionEnabled: Bool) -> UIButton {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_Button(clipsToBounds: Bool) -> UIButton {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    //    @discardableResult
    //    func set_Button(textColor: UIColor) -> UIButton {
    //        self.titleLabel?.textColor = textColor
    //        return self
    //    }
    
    @discardableResult
    func set_Button(Title: String,for state: UIControl.State) -> UIButton {
        self .setTitle(Title, for: state)
        return self
    }
    
    @discardableResult
    func set_Button(titleColor: UIColor,for state: UIControl.State) -> UIButton {
        self .setTitleColor(titleColor, for: state)
        return self
    }
    
    @discardableResult
    func set_Button(image: UIImage?,for state: UIControl.State) -> UIButton {
        self .setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func set_Button(backgroundimage: UIImage?, for state: UIControl.State) -> UIButton {
        self .setBackgroundImage(backgroundimage, for: state)
        return self
    }
    
    //common
    @discardableResult
    func set_Button(bgcolor: UIColor) -> UIButton {
        
        return self .set(bgcolor: bgcolor) as! UIButton
    }
    
    @discardableResult
    func set_Button(alpha: CGFloat) -> UIButton {
        
        return self .set(alpha: alpha) as! UIButton
    }
    
    @discardableResult
    func set_Button(isHideen: Bool) -> UIButton {
        
        return self .set(isHideen: isHideen) as! UIButton
    }
    
    @discardableResult
    func set_Button(frame: CGRect) -> UIButton {
        return self .set(frame: frame) as! UIButton
    }
    
    @discardableResult
    func set_Button(origin: CGPoint) -> UIButton {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_Button(x: CGFloat) -> UIButton {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_Button(y: CGFloat) -> UIButton {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_Button(size: CGSize) -> UIButton {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_Button(width: CGFloat) -> UIButton {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_Button(height: CGFloat) -> UIButton {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_Button(target: Any?,action: Selector,for event: UIControl.Event) -> UIButton {
        self .addTarget(target, action: action, for: event)
        return self
    }
}

//MARK: UIControl
extension ZJLayout where Self: UIControl {
    
    //common
    @discardableResult
    func set_Control(bgcolor: UIColor) -> UIControl {
        
        return self .set(bgcolor: bgcolor) as! UIControl
    }
    
    @discardableResult
    func set_Control(clipsToBounds: Bool) -> UIControl {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_Control(isUserInteractionEnabled: Bool) -> UIControl {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_Control(alpha: CGFloat) -> UIControl {
        
        return self .set(alpha: alpha) as! UIControl
    }
    
    @discardableResult
    func set_Control(isHideen: Bool) -> UIControl {
        
        return self .set(isHideen: isHideen) as! UIControl
    }
    
    @discardableResult
    func set_Control(frame: CGRect) -> UIControl {
        return self .set(frame: frame) as! UIControl
    }
    
    @discardableResult
    func set_Control(origin: CGPoint) -> UIControl {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_Control(x: CGFloat) -> UIControl {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_Control(y: CGFloat) -> UIControl {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_Control(size: CGSize) -> UIControl {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_Control(width: CGFloat) -> UIControl {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_Control(height: CGFloat) -> UIControl {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_Control(target: Any?,action: Selector,for event: UIControl.Event) -> UIControl {
        self .addTarget(target, action: action, for: event)
        return self
    }
}

//MARK: UISegmentedControl
extension ZJLayout where Self: UISegmentedControl {
    
    //common
    @discardableResult
    func set_SegmentControl(bgcolor: UIColor) -> UISegmentedControl {
        
        return self .set(bgcolor: bgcolor) as! UISegmentedControl
    }
    
    @discardableResult
    func set_SegmentControl(clipsToBounds: Bool) -> UISegmentedControl {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_SegmentControl(isUserInteractionEnabled: Bool) -> UISegmentedControl {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    
    @discardableResult
    func set_SegmentControl(alpha: CGFloat) -> UISegmentedControl {
        
        return self .set(alpha: alpha) as! UISegmentedControl
    }
    
    @discardableResult
    func set_SegmentControl(isHideen: Bool) -> UISegmentedControl {
        
        return self .set(isHideen: isHideen) as! UISegmentedControl
    }
    
    @discardableResult
    func set_SegmentControl(frame: CGRect) -> UISegmentedControl {
        return self .set(frame: frame) as! UISegmentedControl
    }
    
    @discardableResult
    func set_SegmentControl(origin: CGPoint) -> UISegmentedControl {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_SegmentControl(x: CGFloat) -> UISegmentedControl {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_SegmentControl(y: CGFloat) -> UISegmentedControl {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_SegmentControl(size: CGSize) -> UISegmentedControl {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_SegmentControl(width: CGFloat) -> UISegmentedControl {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_SegmentControl(height: CGFloat) -> UISegmentedControl {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_SegmentControl(target: Any?,action: Selector,for event: UIControl.Event) -> UISegmentedControl {
        self .addTarget(target, action: action, for: event)
        return self
    }
    
    @discardableResult
    func set_SegmentControl(selectedSegmentIndex: Int) -> UISegmentedControl {
        self .selectedSegmentIndex = selectedSegmentIndex
        return self
    }
    
    @discardableResult
    func set_SegmentControl(title: String?,forSegmentAt: Int) -> UISegmentedControl {
        self .setTitle(title, forSegmentAt: forSegmentAt)
        return self
    }
}




//MARK: UIImageView
extension ZJLayout where Self: UIImageView {
    
    @discardableResult
    func set_ImageV(image: UIImage?) -> UIImageView {
        self.image = image
        return self
    }
    
    @discardableResult
    func set_ImageV(isUserInteractionEnabled: Bool) -> UIImageView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    
    //common
    @discardableResult
    func set_ImageV(bgcolor: UIColor) -> UIImageView {
        
        return self .set(bgcolor: bgcolor) as! UIImageView
    }
    
    @discardableResult
    func set_ImageV(clipsToBounds: Bool) -> UIImageView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_ImageV(alpha: CGFloat) -> UIImageView {
        return self .set(alpha: alpha) as! UIImageView
    }
    
    @discardableResult
    func set_ImageV(isHideen: Bool) -> UIImageView {
        return self .set(isHideen: isHideen) as! UIImageView
    }
    
    @discardableResult
    func set_ImageV(frame: CGRect) -> UIImageView {
        return self .set(frame: frame) as! UIImageView
    }
    
    @discardableResult
    func set_ImageV(origin: CGPoint) -> UIImageView {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_ImageV(x: CGFloat) -> UIImageView {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_ImageV(y: CGFloat) -> UIImageView {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_ImageV(size: CGSize) -> UIImageView {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_ImageV(width: CGFloat) -> UIImageView {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_ImageV(height: CGFloat) -> UIImageView {
        self.frame.size.height = height
        return self
    }
}





//MARK: TableView
extension ZJLayout where Self: UITableView {
    
    //common
    @discardableResult
    func set_TableV(bgcolor: UIColor) -> UITableView {
        return self .set(bgcolor: bgcolor) as! UITableView
    }
    
    @discardableResult
    func set_TableV(clipsToBounds: Bool) -> UITableView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_TableV(isUserInteractionEnabled: Bool) -> UITableView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_TableV(tableFooterView: UIView) -> UITableView {
        self.tableFooterView = tableFooterView
        return self
    }
    
    @discardableResult
    func set_TableV(tableHeaderView: UIView) -> UITableView {
        self.tableHeaderView = tableHeaderView
        return self
    }
    
    @discardableResult
    func set_TableV(alpha: CGFloat) -> UITableView {
        return self .set(alpha: alpha) as! UITableView
    }
    
    @discardableResult
    func set_TableV(isHideen: Bool) -> UITableView {
        
        return self .set(isHideen: isHideen) as! UITableView
    }
    
    @discardableResult
    func set_TableV(isScrollEnabled: Bool) -> UITableView {
        self.isScrollEnabled =  isScrollEnabled
        return self
    }
    
    
    @discardableResult
    func set_TableV(separatorStyle: UITableViewCell.SeparatorStyle) -> UITableView {
        self.separatorStyle =  separatorStyle
        return self
    }
    
    @discardableResult
    func set_TableV(frame: CGRect) -> UITableView {
        return self .set(frame: frame) as! UITableView
    }
    
    @discardableResult
    func set_TableV(origin: CGPoint) -> UITableView {
        self.frame.origin = origin
        return self as UITableView
    }
    
    @discardableResult
    func set_TableV(x: CGFloat) -> UITableView {
        self.frame.origin.x = x
        return self as UITableView
    }
    
    @discardableResult
    func set_TableV(y: CGFloat) -> UITableView {
        self.frame.origin.y = y
        return self as UITableView
    }
    
    @discardableResult
    func set(size: CGSize) -> UITableView {
        self.frame.size = size
        return self as UITableView
    }
    
    @discardableResult
    func set_TableV(width: CGFloat) -> UITableView {
        self.frame.size.width = width
        return self as UITableView
    }
    
    @discardableResult
    func set_TableV(height: CGFloat) -> UITableView {
        self.frame.size.height = height
        return self as UITableView
    }
    
    @discardableResult
    func set_TableV(bounces: Bool) -> UITableView {
        self .bounces = bounces
        return self
    }
    
    @discardableResult
    func set_TableV(showsHorizontalScrollIndicator: Bool) -> UITableView {
        self .showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func set_TableV(showsVerticalScrollIndicator: Bool) -> UITableView {
        self .showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    func set_TableV(scrollsToTop: Bool) -> UITableView {
        self.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    func set_TableV(delegate: UITableViewDelegate) -> UITableView {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func set_TableV(dataSource: UITableViewDataSource) -> UITableView {
        self.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func set_TableV(contentInset: UIEdgeInsets) -> UITableView {
        self.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func set_TableV(scrollIndicatorInsets: UIEdgeInsets) -> UITableView {
        self.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    func set_TableV(register cellclass: AnyClass?, forCellReuseIdentifier identy: String) -> UITableView {
        self.register(cellclass, forCellReuseIdentifier: identy)
        return self
    }
    
    @discardableResult
    func set_TableV(register nib: UINib?, forCellReuseIdentifier identy: String) -> UITableView {
        self.register(nib, forCellReuseIdentifier: identy)
        return self
    }
    
    @discardableResult
    func set_TableV(rowHeight: CGFloat) -> UITableView {
        self.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    func set_TableV(keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> UITableView {
        self.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    func set_TableV(estimatedRowHeight: CGFloat) -> UITableView {
        self.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
}


//MARK: UICollectionView
extension ZJLayout where Self: UICollectionView {
    
    //common
    @discardableResult
    func set_CollectionV<T: UICollectionView>(bgcolor: UIColor) -> T {
        return self .set(bgcolor: bgcolor) as! T
    }
    
    
    @discardableResult
    func set_CollectionV(isUserInteractionEnabled: Bool) -> UICollectionView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_CollectionV<T: UICollectionView>(alpha: CGFloat) -> T {
        return self .set(alpha: alpha) as! T
    }
    
    @discardableResult
    func set_CollectionV(clipsToBounds: Bool) -> UICollectionView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_CollectionV(delegate: UICollectionViewDelegate) -> UICollectionView {
        self.delegate = delegate
        return self
    }
    
    
    @discardableResult
    func set_CollectionV(dataSource: UICollectionViewDataSource) -> UICollectionView {
        self.dataSource = dataSource
        return self
    }
    
    @discardableResult
    func set_CollectionV(contentInset: UIEdgeInsets) -> UICollectionView {
        self.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func set_CollectionV(scrollIndicatorInsets: UIEdgeInsets) -> UICollectionView {
        self.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    
    @discardableResult
    func set_CollectionV(scrollsToTop: Bool) -> UICollectionView {
        self.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    func set_CollectionV(isHideen: Bool) -> UICollectionView {
        
        return self .set(isHideen: isHideen) as! UICollectionView
    }
    
    @discardableResult
    func set_CollectionV(isScrollEnabled: Bool) -> UICollectionView {
        self.isScrollEnabled =  isScrollEnabled
        return self
    }
    
    @discardableResult
    func set_CollectionV(isPagingEnabled: Bool) -> UICollectionView {
        self.isPagingEnabled = isPagingEnabled
        return self
    }
    
    
    @discardableResult
    func set_CollectionV(contentOffset: CGPoint,animated: Bool = false) -> UICollectionView {
        self .setContentOffset(contentOffset, animated: animated)
        return self
    }
    
    @discardableResult
    func set_CollectionV(contentSize: CGSize) -> UICollectionView {
        self .contentSize = contentSize
        return self
    }
    
    @discardableResult
    func set_CollectionV(bounces: Bool) -> UICollectionView {
        self .bounces = bounces
        return self
    }
    
    @discardableResult
    func set_CollectionV(showsHorizontalScrollIndicator: Bool) -> UICollectionView {
        self .showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func set_CollectionV(showsVerticalScrollIndicator: Bool) -> UICollectionView {
        self .showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    
    @discardableResult
    func set_CollectionV(frame: CGRect) -> UICollectionView {
        return self .set(frame: frame) as! UICollectionView
    }
    
    @discardableResult
    func set_CollectionV(origin: CGPoint) -> UICollectionView {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_CollectionV(keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> UICollectionView {
        self.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    func set_CollectionV(x: CGFloat) -> UICollectionView {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_CollectionV(y: CGFloat) -> UICollectionView {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_CollectionV(size: CGSize) -> UICollectionView {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_CollectionV(width: CGFloat) -> UICollectionView {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_CollectionV(height: CGFloat) -> UICollectionView {
        self.frame.size.height = height
        return self
    }
    
}



//MARK: ScrollView
extension ZJLayout where Self: UIScrollView {
    
    //common
    @discardableResult
    func set_ScrollV<T: UIScrollView>(bgcolor: UIColor) -> T {
        return self .set(bgcolor: bgcolor) as! T
    }
    
    @discardableResult
    func set_ScrollV<T: UIScrollView>(alpha: CGFloat) -> T {
        return self .set(alpha: alpha) as! T
    }
    
    @discardableResult
    func set_ScrollV(clipsToBounds: Bool) -> UIScrollView {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_ScrollV(keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> UIScrollView {
        self.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @discardableResult
    func set_ScrollV(isUserInteractionEnabled: Bool) -> UIScrollView {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_ScrollV(delegate: UIScrollViewDelegate) -> UIScrollView {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func set_ScrollV(contentInset: UIEdgeInsets) -> UIScrollView {
        self.contentInset = contentInset
        return self
    }
    
    @discardableResult
    func set_ScrollV(scrollIndicatorInsets: UIEdgeInsets) -> UIScrollView {
        self.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    @discardableResult
    func set_ScrollV(scrollsToTop: Bool) -> UIScrollView {
        self.scrollsToTop = scrollsToTop
        return self
    }
    
    @discardableResult
    func set_ScrollV(isHideen: Bool) -> UIScrollView {
        
        return self .set(isHideen: isHideen) as! UIScrollView
    }
    
    @discardableResult
    func set_ScrollV(isScrollEnabled: Bool) -> UIScrollView {
        self.isScrollEnabled =  isScrollEnabled
        return self
    }
    
    @discardableResult
    func set_ScrollV(isPagingEnabled: Bool) -> UIScrollView {
        self.isPagingEnabled = isPagingEnabled
        return self
    }
    
    
    @discardableResult
    func set_ScrollV(contentOffset: CGPoint,animated: Bool = false) -> UIScrollView {
        self .setContentOffset(contentOffset, animated: animated)
        return self
    }
    
    @discardableResult
    func set_ScrollV(contentSize: CGSize) -> UIScrollView {
        if self.contentSize != contentSize {
            self .contentSize = contentSize
        }
        return self
    }
    
    @discardableResult
    func set_ScrollV(bounces: Bool) -> UIScrollView {
        self .bounces = bounces
        return self
    }
    
    @discardableResult
    func set_ScrollV(showsHorizontalScrollIndicator: Bool) -> UIScrollView {
        self .showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    @discardableResult
    func set_ScrollV(showsVerticalScrollIndicator: Bool) -> UIScrollView {
        self .showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    
    @discardableResult
    func set_ScrollV(frame: CGRect) -> UIScrollView {
        return self .set(frame: frame) as! UIScrollView
    }
    
    @discardableResult
    func set_ScrollV(origin: CGPoint) -> UIScrollView {
        self.frame.origin = origin
        return self as UIScrollView
    }
    
    @discardableResult
    func set_ScrollV(x: CGFloat) -> UIScrollView {
        self.frame.origin.x = x
        return self as UIScrollView
    }
    
    @discardableResult
    func set_ScrollV(y: CGFloat) -> UIScrollView {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_ScrollV(size: CGSize) -> UIScrollView {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_ScrollV(width: CGFloat) -> UIScrollView {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_ScrollV(height: CGFloat) -> UIScrollView {
        self.frame.size.height = height
        return self
    }
    
}



//MARK: UITextField
extension ZJLayout where Self: UITextField {
    
    //common
    @discardableResult
    func set_TextField(bgcolor: UIColor) -> UITextField {
        
        return self .set(bgcolor: bgcolor) as! UITextField
    }
    
    @discardableResult
    func set_TextField(clipsToBounds: Bool) -> UITextField {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_TextField(isUserInteractionEnabled: Bool) -> UITextField {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_TextField(alpha: CGFloat) -> UITextField {
        
        return self .set(alpha: alpha) as! UITextField
    }
    
    @discardableResult
    func set_TextField(isHideen: Bool) -> UITextField {
        
        return self .set(isHideen: isHideen) as! UITextField
    }
    
    @discardableResult
    func set_TextField(frame: CGRect) -> UITextField {
        return self .set(frame: frame) as! UITextField
    }
    
    @discardableResult
    func set_TextField(origin: CGPoint) -> UITextField {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_TextField(x: CGFloat) -> UITextField {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_TextField(y: CGFloat) -> UITextField {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_TextField(size: CGSize) -> UITextField {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_TextField(width: CGFloat) -> UITextField {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_TextField(height: CGFloat) -> UITextField {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_TextField(target: Any?,action: Selector,for event: UIControl.Event) -> UITextField {
        self .addTarget(target, action: action, for: event)
        return self
    }
    
    @discardableResult
    func set_TextField(delegate: UITextFieldDelegate) -> UITextField {
        self .delegate = delegate
        return self
    }
    
    @discardableResult
    func set_TextField(font: UIFont) -> UITextField {
        self .font = font
        return self
    }
    
    @discardableResult
    func set_TextField(textColor: UIColor) -> UITextField {
        self .textColor = textColor
        return self
    }
    
    @discardableResult
    func set_TextField(clearButtonMode: UITextField.ViewMode) -> UITextField {
        self .clearButtonMode = clearButtonMode
        return self
    }
    
    @discardableResult
    func set_TextField(returnKeyType: UIReturnKeyType) -> UITextField {
        self .returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    func set_TextField(leftView: UIView) -> UITextField {
        self .leftView = leftView
        return self
    }
    
    @discardableResult
    func set_TextField(leftViewMode: UITextField.ViewMode) -> UITextField {
        self .leftViewMode = leftViewMode
        return self
    }
    
    @discardableResult
    func set_TextField(rightView: UIView) -> UITextField {
        self .rightView = rightView
        return self
    }
    
    @discardableResult
    func set_TextField(rightViewMode: UITextField.ViewMode) -> UITextField {
        self .rightViewMode = rightViewMode
        return self
    }
}


//MARK: UISider
extension ZJLayout where Self: UISlider {
    
    //common
    @discardableResult
    func set_Slider(bgcolor: UIColor) -> UISlider {
        
        return self .set(bgcolor: bgcolor) as! UISlider
    }
    
    @discardableResult
    func set_Slider(clipsToBounds: Bool) -> UISlider {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    @discardableResult
    func set_Slider(isUserInteractionEnabled: Bool) -> UISlider {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    @discardableResult
    func set_Slider(alpha: CGFloat) -> UISlider {
        
        return self .set(alpha: alpha) as! UISlider
    }
    
    @discardableResult
    func set_Slider(isHideen: Bool) -> UISlider {
        
        return self .set(isHideen: isHideen) as! UISlider
    }
    
    @discardableResult
    func set_Slider(frame: CGRect) -> UISlider {
        return self .set(frame: frame) as! UISlider
    }
    
    @discardableResult
    func set_Slider(origin: CGPoint) -> UISlider {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_Slider(x: CGFloat) -> UISlider {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_Slider(y: CGFloat) -> UISlider {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_Slider(size: CGSize) -> UISlider {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_Slider(width: CGFloat) -> UISlider {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_Slider(height: CGFloat) -> UISlider {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_Slider(target: Any?,action: Selector,for event: UIControl.Event) -> UISlider {
        self .addTarget(target, action: action, for: event)
        return self
    }
    
    @discardableResult
    func set_Slider(thumbImage: UIImage?,for state: UIControl.State) -> UISlider {
        self .setThumbImage(thumbImage, for: state)
        return self
    }
    
    
    @discardableResult
    func set_Slider(value: Float,animated: Bool) -> UISlider {
        self .setValue(value, animated: animated)
        return self
    }
    
    @discardableResult
    func set_Slider(MaximumTrackImage image: UIImage?,for state: UIControl.State) -> UISlider {
        self .setMaximumTrackImage(image, for: state)
        return self
    }
    
    @discardableResult
    func set_Slider(MinimumTrackImage image: UIImage?,for state: UIControl.State) -> UISlider {
        self .setMinimumTrackImage(image, for: state)
        return self
    }
    
    @discardableResult
    func set_Slider(maximumTrackTintColor: UIColor) -> UISlider {
        self.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    
    @discardableResult
    func set_Slider(minimumTrackTintColor: UIColor) -> UISlider {
        self.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    
    @discardableResult
    func set_Slider(maximumValue: Float) -> UISlider {
        self.maximumValue = maximumValue
        return self
    }
    
    @discardableResult
    func set_Slider(minimumValue: Float) -> UISlider {
        self.minimumValue = minimumValue
        return self
    }
    
    @discardableResult
    func set_Slider(isContinuous: Bool) -> UISlider {
        self.isContinuous = isContinuous
        return self
    }
}
