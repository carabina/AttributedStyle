//
//  AttributedStyle.swift
//  Pods
//
//  Created by Pilipenko Dima on 7/20/16.
//
//

import Foundation

public class AttributedStyle {
    public private(set) var attributes = [String: AnyObject]()
    
    private var _paragraphStyle: NSMutableParagraphStyle?
    
    public func font(value: UIFont) -> Self {
        attributes[NSFontAttributeName] = value
        return self
    }
    
    public func paragraphStyle(value: NSMutableParagraphStyle) -> Self {
        _paragraphStyle = value
        attributes[NSParagraphStyleAttributeName] = value
        return self
    }
    
    public func foregroundColor(value: UIColor) -> Self {
        attributes[NSForegroundColorAttributeName] = value
        return self
    }
    
    public func backgroundColor(value: UIColor) -> Self {
        attributes[NSBackgroundColorAttributeName] = value
        return self
    }
    
    public func ligature(value: Int) -> Self {
        attributes[NSLigatureAttributeName] = value
        return self
    }
    
    public func kerning(value: CGFloat) -> Self {
        attributes[NSKernAttributeName] = value
        return self
    }
    
    public func strikethroughStyle(value: Int) -> Self {
        attributes[NSStrikethroughStyleAttributeName] = value
        return self
    }
    
    public func underlineStyle(value: Int) -> Self {
        attributes[NSUnderlineStyleAttributeName] = value
        return self
    }
    
    public func strokeColor(value: UIColor) -> Self {
        attributes[NSStrokeColorAttributeName] = value
        return self
    }
    
    public func strokeWidth(value: CGFloat) -> Self {
        attributes[NSStrokeWidthAttributeName] = value
        return self
    }
    
    // composed
    public func alignment(value: NSTextAlignment) -> Self {
        if _paragraphStyle == nil { _paragraphStyle = NSMutableParagraphStyle() }
        attributes[NSParagraphStyleAttributeName] = _paragraphStyle!
        
        _paragraphStyle!.alignment = value
        return self
    }
        
    deinit {
        _paragraphStyle = nil
    }
}