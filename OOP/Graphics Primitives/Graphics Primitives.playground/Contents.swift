import UIKit

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var start: Point
    var end: Point
    func length() -> Double {
        let lengthOfLine = sqrt((start.x - end.x) + (start.y - end.y))
        print (lengthOfLine)
        return lengthOfLine
    }
}

struct Triangle {
    var points: [Point]
    func area(points: [Point]) -> Double {
        var areaOfTriangle = 0.5 * ((points[0].x * points[1].y) + (points[1].x * points[2].y) + (points[2].x * points[0].y) - (points[0].x * points[2].y) - (points[2].x * points[0].y) - (points[1].x * points[0].y))
        if areaOfTriangle < 0 {
            areaOfTriangle *= -1
        }
        return areaOfTriangle
    }
}

