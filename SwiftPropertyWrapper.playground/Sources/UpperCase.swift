import Foundation

@propertyWrapper
public struct UpperCase<Value: StringProtocol>{
    public var value: Value
    
    public init(wrappedValue value: Value){
        self.value = value
    }
    
    public var wrappedValue: Value{
        get{ return value.uppercased() as! Value }
        set{ value = newValue}
    }
}

public struct UpperCaseTest{
    @UpperCase
    public var name: String = "deepty"
    
    public init(name: String){
        self.name = name
    }
}



