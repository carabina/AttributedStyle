import UIKit
import XCTest
@testable import AttributedStyle

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let attributedStyle = AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight))
        let parapraphStyle = ParagraphStyle().lineBreakMode(.ByTruncatingMiddle)
        let attributes = attributedStyle.paragraphStyle(parapraphStyle.style).foregroundColor(.grayColor()).attributes
        
        let label = UILabel()
        label.attributedText = NSAttributedString(string: "Attribute it!", attributes: attributes)
        // or
        label.attributedText = NSAttributedString(string: "Attribute it!", attributes: AttributedStyle().font(UIFont.systemFontOfSize(21, weight: UIFontWeightLight)).foregroundColor(UIColor.darkGrayColor()).paragraphStyle(ParagraphStyle().alignment(.Center).style).attributes)
        
        print("attrs: \(attributes)")
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
