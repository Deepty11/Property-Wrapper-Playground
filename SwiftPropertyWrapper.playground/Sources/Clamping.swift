import Foundation

@propertyWrapper
public struct Clamping<Value: Comparable>{
    var value: Value
    var range: ClosedRange<Value>

    public init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
//        precondition(range.contains(value))
        self.value = value
        self.range = range
    }
    
    public var wrappedValue: Value{
        get{ min(max(range.lowerBound, value), range.upperBound)}
        
        set{ value = newValue }
    }
}

public struct ClampingTest {
    @Clamping(0...14)
    public var ph: Double =  0.7
    
    public init(ph: Double) {
        self.ph = ph
    }
}




