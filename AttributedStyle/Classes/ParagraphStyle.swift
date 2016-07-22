//
//  ParagraphStyle.swift
//  Pods
//
//  Created by Pilipenko Dima on 7/20/16.
//
//

import Foundation

public class ParagraphStyle {
    private var _paragraphStyle = NSMutableParagraphStyle()
    
    public var style: NSMutableParagraphStyle {
        return _paragraphStyle.mutableCopy() as! NSMutableParagraphStyle
    }
    
    public func lineSpacing(value: CGFloat) -> Self {
        _paragraphStyle.lineSpacing = value
        return self
    }
    
    public func paragraphSpacing(value: CGFloat) -> Self {
        _paragraphStyle.paragraphSpacing = value
        return self
    }
    
    public func alignment(value: NSTextAlignment) -> Self {
        _paragraphStyle.alignment = value
        return self
    }
    
    public func headIndent(value: CGFloat) -> Self {
        _paragraphStyle.headIndent = value
        return self
    }
    
    public func tailIndent(value: CGFloat) -> Self {
        _paragraphStyle.tailIndent = value
        return self
    }
    
    public func lineBreakMode(value: NSLineBreakMode) -> Self {
        _paragraphStyle.lineBreakMode = value
        return self
    }
    
    deinit {
    }
}