import Foundation

@propertyWrapper
struct UserDefault<Value>{
    let key: String
    let defaultValue: Value
    let container: UserDefaults = .standard
    
    var wrappedValue: Value{
        get{
            container.object(forKey: key) as? Value ?? defaultValue
        }
        
        set{
            container.set(newValue, forKey: key)
        }
    }
    
}

extension UserDefaults{
    
    //caseless enum
    public enum Keys{
        static let hasOnboarded = "hasOnboarded"
    }
    
    @UserDefault(key: UserDefaults.Keys.hasOnboarded, defaultValue: false)
    static var hasOnboarded: Bool
}

func showOnBoardingUI(){
    if UserDefaults.hasOnboarded{
        print("yes")
    } else{
        print("No")
    }
    
}
