import Foundation
/**
 * A fillet is a class that represents the curved corners of a rectangle (DataContainer, Bean style class)
 * // :TODO: refactor to be TRBL or?
 * TODO: this should probably use GEnerics, to get rid of the casting, research this
 */
class Fillet:ILayout {
    var topLeft:CGFloat;
    var topRight:CGFloat;
    var bottomLeft:CGFloat;
    var bottomRight:CGFloat;
    required init(_ args:Any...) {//TODO:you may need to add the _ char infront of args
        
    }
    init(_ args:Array<CGFloat>){
        switch(args.count){
            case 0: topLeft = 0; topRight = 0; bottomLeft = 0; bottomRight = 0; break;
            case 1: topLeft = args[0];topRight = args[0];bottomLeft = args[0];bottomRight = args[0]; break;
            case 2: topLeft = args[0]; topRight = args[0];bottomLeft = args[1]; bottomRight = args[1]; break;
            case 3: topLeft = args[0];topRight = args[1];bottomLeft = args[2];bottomRight = 0; break;
            case 4: topLeft = args[0];topRight = args[1];bottomLeft = args[2];bottomRight = args[3]; break;
            default: fatalError("Argument length not supported: " + "\(args.count)");
        }
    }
}
