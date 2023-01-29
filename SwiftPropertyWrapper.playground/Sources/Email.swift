import Foundation


@propertyWrapper
public struct Email<Value: StringProtocol>{
    public var value: Value?
    
    public init(wrappedValue value: Value?){
        self.value = value
    }
    
    public var wrappedValue: Value?{
        get{ return validate(email: value) ? value : nil }
        set{ value = newValue }
    }
    
    private func validate(email: Value?) -> Bool{
       
        guard let email = email else { return false }
        
        let regex = "[a-zA-Z0-9._]+@[a-z]+\\.[a-z]{2,4}"
        let emailPredicate =  NSPredicate(format: "SELF MATCHES %@", regex)
        return emailPredicate.evaluate(with: email)
    }
}

public struct Info{
    @Email
    public var email: String? = "abcd.1234@gg.com"
    
    public init(email: String?) {
        self.email = email
    }
    
    public func getEmail()-> String?{
        return email
    }

    public mutating func setEmail(email: String?){
        self.email = email
    }
}


