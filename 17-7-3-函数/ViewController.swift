//
//  ViewController.swift
//  17-7-3-函数
//
//  Created by Zeus on 2017/7/3.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 外部参数调用的测试
        print(sum1(num1: 10, num2: 20))
        print(sum2(10, 20))
        
        // 测试默认值
        print(sum3())
        print(sum3(x: 10, y: 20))
        print(sum3( y: 8))
        
        
    }

    // MARK --- 函数的定义 ---------------------
    func sum(x: Int, y:Int ) -> Int {
        return x + y
    }

    // MARK --- 外部参数 -------------------------
    /// 外部参数不会影响函数内部的细节，可以让调用方看起来更直观
    /// 外部参数使用"_"，在外部调用函数时，会忽略形参的名字
    func sum1(num1: Int, num2:Int ) -> Int {
        return num1 + num2
    }
    
    func sum2(_ x: Int, _ y:Int ) -> Int {
        
        // 在swift中 _ 就是可以忽略任何不感兴趣的内容
        // i从来没有被用到，建议用_取代
        for _ in 0..<10 {
            print("hello")
        }
        
        return x + y
    }
    
    
    // MARK --- 默认值 -------------------
    // 通过给参数设置默认值，在调用的时候，可以任意组合参数，如果不指定的，就是用默认值
    func sum3(x: Int = 1, y:Int = 2) -> Int {
        return x + y;
    }
    
    // MARK --- 无返回值 ---- （ps：主要用于闭包的情况）
    /*
     返回的形式 1. 直接省略  2.- （）  3.void
     */
    func demo1() {
        print("哈哈哈")
    }
    
    
    
    

    
}























