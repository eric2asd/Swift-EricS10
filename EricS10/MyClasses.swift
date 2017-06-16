//
//  MyClasses.swift
//  EricS10
//
//  Created by 陳信毅 on 2017/6/16.
//  Copyright © 2017年 陳信毅. All rights reserved.
//

import Foundation

class MyClass01{
    var x: Int
    init(x:Int){self.x = x}
    subscript (y: Int) -> String{
        return "\(x) x \(y) = \(x * y)"
    }
    subscript(y: Int,z: Int) -> Int{
        return 123
    }
    subscript(y:Double)-> Double{
        get {
            print("get")
            return floor(y)
       }
        set {
            print("set")
            self.x = Int(ceil(newValue))
        }
    }
}

//----------------------------
class Super1 {
    private var x = 10
    var y = 2
    var z = 2
    var a:Int{
        get{
            return 2
        }
        set{
            
        }
    }
    func f1(){
        print("Super1:f1()")
    }
    func f2(x:Int)-> Double{
        return 1.0
    }
}
class Sub11: Super1{
    var x = 3.14
    override var y :Int{
        get{
            return 3
        }
        set{
            
        }
    }
    override var z : Int{
        willSet{
            
        }
        didSet{
            
        }
    }
    override func f1() {
        super.f1()
        print("Sub11:f1()")
    }
    func f2(y:Int)->Double{
        return 2.0
    }
    override func f2(x:Int)->Double{
        return 3.0
    }
}

//--------------------------
final class Super2 {
    
}
//class Sub21 : Super2{
//    
//}

//---------------------------
class Super3 {
    func f1(){print("Super3:f1()")}
}
class Sub31 :Super3 {
    override func f1(){print("Sub31:f1()")}
    func f2(){print("Sub31:f2()")}
    func f3(){print("Sub31:f3()")}

}
class Sub32 :Super3 {
    override func f1(){print("Sub32:f1()")}
    func f2(){print("Sub32:f2()")}
    func f4(){print("Sub31:f4()")}

}

