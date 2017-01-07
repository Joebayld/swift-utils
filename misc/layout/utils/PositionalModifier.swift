import Foundation

class PositionalModifier {
    /**
     * Rotates positionals
     */
    static func rotate(positionals:Array<IPositional>, _ pivot:CGPoint, _ rotation:CGFloat) {
        var matrix:CGAffineTransform = CGAffineTransformIdentity
        matrix.rotateAroundPoint(rotation, pivot)//MatrixModifier.rotateAroundExternalPoint(matrix, pivot, rotation);
        for positional:IPositional in positionals {
            var point:CGPoint = positional.getPosition()
            point = matrix.transformPoint(point)
            positional.setPosition(point)
        }
    }
    /**
     * Position instances of IPositional
     */
    static func position(positionals:Array<IPositional>,_ positions:Array<CGPoint>) {
        for i in 0..<.count {//<-recently updated to swift 3 style for loop syntax
            positionals[i].setPosition(positions[i])
        }
    }
    /**
     *
     */
    static func transform(positionals:Array<IPositional>, _ initPositions:Array<CGPoint>, _ matrix:CGAffineTransform) {
        for i in 0..<positionals.count{//<-recently updated to swift 3 style for loop syntax
            positionals[i].setPosition(matrix.transformPoint(initPositions[i])) 
        }
    }
}