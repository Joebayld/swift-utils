import Foundation

typealias IGradient = GradientKind
protocol GradientKind {
    var colors:[CGColor]{get set}
    var locations:[CGFloat]{get set}
    var rotation:CGFloat{get set}/*between -π and π*/
}
extension GradientKind{
    func copy() -> GradientKind {
        if(self is LinearGradient){return LinearGradient(colors,locations,rotation)}
        else{return RadialGradient(colors,locations,rotation,(self as! RadialGradient).startCenter,(self as! RadialGradient).endCenter,(self as! RadialGradient).startRadius,(self as! RadialGradient).endRadius)}
    }
}
