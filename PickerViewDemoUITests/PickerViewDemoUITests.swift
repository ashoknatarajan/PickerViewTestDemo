import XCTest

class PickerViewDemoUITests: XCTestCase {
  func testExample() {
    let app = XCUIApplication()
    app.launch()
    
    // I can swipe the picker view, but how can I select a **specific** item from it?
    app.pickers.elementAtIndex(0).swipeUp()
    
    XCTAssert(app.staticTexts["Selected: Black"].exists)
  }
}
