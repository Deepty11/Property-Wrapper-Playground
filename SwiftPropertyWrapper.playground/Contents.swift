import UIKit

//MARK: - Clamping
var clampingTest1 = ClampingTest(ph: -1)
let clampingTest2 = ClampingTest(ph: 20.0)
let clampingTest3 = ClampingTest(ph: 13)

print(clampingTest1.ph)
print(clampingTest2.ph)
print(clampingTest3.ph)

//MARK: - Email Validation
var info = Info(email: "abc@com")
print(info.getEmail() ?? "invalid")

info.email = "abc.1234@gmail.com"
print(info.getEmail() ?? "invalid")


//MARK: - Uppercase
var infoForName = UpperCaseTest(name: "deepty")
print(infoForName.name)
