//
//  main.swift
//  EricS10
//
//  Created by 陳信毅 on 2017/6/16.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

var obj1 = MyClass01(x:2)
print(obj1[7,3])
obj1.x = 3
for i in 1...9 {
    print(obj1[i])
}

print(obj1[3.14])
obj1[3.14] = 7.456
print(obj1.x)

var obj2 = Sub11()
print(obj2.x)

obj2.f1()
obj2.f2(x: 1)

print("------------")
var obj3 = Super3()
var obj31 = Sub31()
var obj32 = Sub32()
print(obj3 is Super3)
print(obj31 is Super3)
print(obj31 is Super2)

var obj33:Super3 = Sub31()
print(type(of:obj33))
print(obj33 is Super3)
print(obj33 is Sub31)
print(obj33 is Sub32)
var obj34 = obj33 as! Sub31
print(type(of:obj34))
obj34.f2()
//var obj35 = obj33 as! Sub32

if obj33 === obj34{
    print("OK")
}else{
    print("XX")
}
obj33.f1()

print("------")
func needSuper3(obj:Super3){
    obj.f1()
    if obj is Sub31 {
        (obj as! Sub31).f3()
    }
    if obj is Sub32 {
        (obj as! Sub32).f4()
    }
}

needSuper3(obj: obj31)
needSuper3(obj: obj32)

var obj35:Super3 = obj31 as Super3

func needObj(obj:AnyObject){
    print(type(of:obj))
}

needObj(obj: obj31)
// Any => class object,struct,value,enum. no func
func needAnything(something:Any){
    print(type(of:something))
}
needAnything(something: "Hello")
needAnything(something: obj32)

obj32.f1()
extension Sub32 {
    func sayYa(){print("YA")}
}
obj32.sayYa()
extension Int {
    func whoru(){print("I am \(self.hashValue)")}
}

123.whoru()
