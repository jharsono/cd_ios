import UIKit

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles

//Create a Line struct that has a "Start" and "End" property both of type Point

//In the Line struct add a function to return the Length of the created line as a Double.

//Create a Triangle Struct that contains a property called "Points" which is an array of type Point

//(Optional) Notice this optional can be quite hard! Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.

struct Point {
    var x: Double
    var y: Double
}

struct Line {
    var start: Point
    var end: Point
    
    func length() -> Double{ // length function that returns a double.
        let lengthOfLine = sqrt((start.x - end.x) + (start.y - end.y))
        print(lengthOfLine)
        return lengthOfLine
    }
}

struct Triangle {
    var points: [Point] // an array of type point
    func area(points: [Point]) -> Double {// expecting a parameter of an array of points, returns a double
        var areaOfTriangle = 0.5 * ((points[0].x * points[1].y) + (points[1].x * points[2].y) + (points[2].x * points[0].y) - (points[0].x * points[2].y) - (points[2].x * points[0].y) - (points[1].x * points[0].y))
        if areaOfTriangle < 0 {
            areaOfTriangle *= -1
        }
        return areaofTriangle
    }
}
