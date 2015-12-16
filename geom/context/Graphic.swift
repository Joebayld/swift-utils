import Cocoa
/**
 * set needsDisplay = true to clear the graphics
 * TODO: Write an example
 * NOTE: Example is in the Graphics class
 */
class Graphic:CALayer{
    var fillShape:Shape = Shape()
    var lineShape:Shape = Shape()
    var fillStyle:IFillStyle?;
    var lineStyle:ILineStyle?;
    var lineOffsetType:OffsetType?;
    //override var wantsDefaultClipping:Bool{return false}//avoids clipping the view
    init(frame frameRect: NSRect) {
        super.init(/*frame: frameRect*/)
        //self.wantsLayer = true//this avoids calling drawLayer() and enables drawingRect()
        self.addSublayer(fillShape)
        self.addSublayer(lineShape)
    }
    //required init?(coder: NSCoder) {fatalError("init(coder:) has not been implemented")}/*Required by super class*/
    
    
    
    /**
     *
     */
    /*
    override func drawRect(dirtyRect: NSRect) {
    Swift.print("Graphic.drawRect() ")
    super.drawRect(dirtyRect)
    }
    */
}
extension CGMutablePath{
    /**
     * Note its probably better to move this method into the Graphic class since then it can be overriden by subclasses, which you cant do with this extension method
     */
    func add(path:CGPath){
        CGPathAddPath(self, nil, path)
    }
}