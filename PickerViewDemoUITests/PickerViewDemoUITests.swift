import XCTest

class PickerViewDemoUITests: XCTestCase {
  func testExample() {
    let app = XCUIApplication()
    app.launch()
    
    // I can swipe the picker view, but how can I select a **specific** item from it?
    app.pickers.elementAtIndex(0).swipeUp()
    
    // One can also change the picker selection this way
    app.pickers.elementAtIndex(0).pressForDuration(0.1, thenDragToElement: app.staticTexts["Selected: Black"])
  }
}
