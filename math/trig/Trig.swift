import Foundation
var π = CGFloat(M_PI)/*Global variable*/
var π2 = CGFloat(M_PI_2)/*Global variable,pi/2*/
var π4 = CGFloat(M_PI_4)/*Global variable,pi/4*/
var ㎭ = π/180/*Global variable*/
class Trig{
    static var clockWise:String = "clockWise"
    static var cw:String = Trig.clockWise
    static var counterClockWise:String = "counterClockWise"
    static var ccw:String = Trig.counterClockWise
    static var left:CGFloat = 180;
    static var right:CGFloat = 0;
    static var bottom:CGFloat = 90;
    static var top:CGFloat = 270;//-90
    static var rad:CGFloat = π / 180//㎭, EXAMPLE: 90*Trig.rad//Output:π/4
    static var deg:CGFloat = 180 / π//°, EXAMPLE: Trig.pi/4*Trig.deg//Output: 90
    static var qpi:CGFloat = π / 4//quarter pi (0.785)
    static var epi:CGFloat = π / 8//eighth pi (0.785/2)
    static var spi:CGFloat = π / 16//sixteenth pi (0.785/4)
    static var hpi:CGFloat = π / 2//half pi(1.57)
    static var dpi:CGFloat = π * 2//dubble pi (6.28)
    static var pi:CGFloat = π// pi (3.14)
    static var tpi:CGFloat = π / 6// 30 deg in radians, twelft
    static var dtpi:CGFloat = π / 3// 60 deg in radians, dubble twelft
    static var t:(CGFloat, CGFloat) = (-π/4,-π*0.75);
    static var b:(CGFloat, CGFloat) = (π/4,π*0.75);
    static var l:(CGFloat, CGFloat) = (Trig.normalize(π*0.75), Trig.normalize(-π*0.75));/*remember to normalize the angle to test against this value to be between 0 - PI*2*/
    static var r:(CGFloat, CGFloat) = (-π/4, π/4);
    static var tl:(CGFloat,CGFloat) = (-π,-π/2)//(-180*㎭,-90*㎭)
    static var tr:(CGFloat,CGFloat) = (-π/2,0)//(-90*㎭,0)
    static var br:(CGFloat,CGFloat) = (0,π/2)//(0,90*㎭)
    static var bl:(CGFloat,CGFloat) = (π/2,π)//(90*㎭,180*㎭)
}
extension Trig{/*Legacy-support/convenience*/
    /*Parsers*/
    class func angle(a:CGPoint, _ b:CGPoint)->CGFloat {return TrigParser.angle(a, b)}
    class func angleType(angleType:String)->CGFloat {return TrigUtils.angleType(angleType)}
    class func normalize(angle:CGFloat)->CGFloat {return TrigParser.normalize(angle)}
    class func normalize2(angle:CGFloat)->CGFloat {return TrigParser.normalize2(angle)}
    class func degrees(radians:CGFloat) -> CGFloat {return TrigConverter.degrees(radians)}
    class func radians(degrees:CGFloat) -> CGFloat {return TrigConverter.radians(degrees)}
    class func difference(startAngle:CGFloat,_ endAngle:CGFloat)->CGFloat {return TrigParser.difference(startAngle, endAngle)}
    class func difference(pivot:CGPoint,_ p1:CGPoint,_ p2:CGPoint) -> CGFloat {return TrigParser.difference(pivot, p1,p2)}
    class func flip(angle:CGFloat,_ axisMultiplier:CGPoint) -> CGFloat {return TrigParser.flip(angle, axisMultiplier)}
    class func angleSpan(a:CGFloat, _ b:CGFloat, _ direction:String = Trig.clockWise) -> CGFloat{return TrigParser.angleSpan(a, b, direction)}
    class func angleSpan2(a:CGFloat, _ b:CGFloat, _ isClockWise:Bool = true) -> CGFloat {return TrigParser.angleSpan2(a, b, isClockWise)}
    class func pointSpan2(p1:CGPoint,_ p2:CGPoint,_ pivot:CGPoint,_ isClockWise:Bool = true)->CGFloat {return TrigParser.pointSpan2(p1, p2, pivot, isClockWise)}
    class func angleBisector(a:CGFloat,_ b:CGFloat) -> CGFloat{return TrigParser.angleBisector(a, b)}
    
    /*Asserters*/
    class func isClockWise(center:CGPoint,_ p1:CGPoint,_ p2:CGPoint)->Bool {return TrigAsserter.isClockWise(center, p1, p2)}
    class func isClockWiseByAngle(a:CGFloat,_ b:CGFloat)->Bool { return TrigAsserter.isClockWiseByAngle(a, b) }
    class func isOppositeDirectional(bisectorAngle:CGFloat, _ angleA:CGFloat, _ angleB:CGFloat) -> Bool{return TrigAsserter.isOppositeDirectional(bisectorAngle, angleA, angleB)}
    class func isContraDirectional(a:CGFloat,_ b:CGFloat) -> Bool{return TrigAsserter.isContraDirectional(a, b)}
    class func isParallel(a:CGFloat,_ b:CGFloat) -> Bool{return TrigAsserter.isParallel(a, b)}
    class func isCodirectional(a:CGFloat,_ b:CGFloat) -> Bool{return TrigAsserter.isCodirectional(a, b)}
    class func isNormal(angle1:CGFloat,_ angle2:CGFloat) -> Bool{return TrigAsserter.isNormal(angle1, angle2)}
    class func isCollinearNormal(p1:CGPoint,_ p2:CGPoint, _ angle1:CGFloat,_ angle2:CGFloat) -> Bool {return TrigAsserter.isCollinearNormal(p1,p2,angle1,angle2)}
    class func isCoDir(a:CGFloat,_ b:CGFloat) -> Bool{return TrigAsserter.isCoDir(a, b)}
}