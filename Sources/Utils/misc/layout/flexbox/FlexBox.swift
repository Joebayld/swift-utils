import Foundation
//Continue here 🏀
    //Figure out shrink and grow. and if 100% works etc
    //figure out direction, will items strech then? etc
/**
 * display:flex;
 */
class FlexBox {}
enum FlexWrapType:String{
    case noWrap = "noWrap"
    case wrap = "wrap"
    //wrapReverse, not supported yet
}
struct FlexContainer{
    var flexibles:[Flexible]
    var wrapType:FlexWrapType
    //var flexDir:FlowFlexDirType,row,collumn,reverseRow,collumnReverse
}
/**
 * TODO: Needs init size, size
 * IMPORTANT: ⚠️️ Set grow and shrink to 0 if you want to fix the width of an item
 * IMPORTANT: ⚠️️ set basis to 25% and grow 1. And then add 3 tiems. each of them will actually take up 33.3%, and a fourth and they take up 25%
 */
struct FlexItem{
    var flexible:Flexible
    /**
     * Grow: defined how much of the remainder of the space it should use. Canvas: 400, text: 300 : button.grow:1 = 100, grow:2 = 50?
     * NOTE: flex-grow:0 simply means that the item won't be resized during item size calculation to accommodate flex container's full main axis size.
     * CONCEPT: if you have 3 items in a 300px container. and they are grow:1 then their space will be: 1/3 aka 100px. If 1 is grow:2 then its width will be as if there are 4 items. so 300/4*2 and the two other will be: 300/4*1
     * IMPORTANT: if there is a fixed item in the container, the remainder space will be container - fixed-
     */
    var grow:Int = 0/*The element will not grow if there's space available. It will only use the space it needs.*/
    var shrink:Int = 1/*If there's not enough space available in the container's main axis, the element will shrink by a factor of 1, and will wrap its content.*/
    /**
     * Flex-basis: When flex-direction is row, flex-basis controls width, But when flex-direction is column, flex-basis controls height.
     */
    var basis:Int? = nil//nil means auto
    //var flexBasis:CGFloat "auto" or px,ems auto means get width from child width. text,img etc
}
typealias Flexible = IPositional & ISizeable




//The way I understand it:
    //remainder space is key
    //grow means if there is 3 items and you want 1 to have 2 /3 of the space you set it to two and the other two to 0.5, f you set them to 1 then you get 4 sort of. THe grow should be the percentage IMO
    //shrink in conjunction with grow is hard
    //

