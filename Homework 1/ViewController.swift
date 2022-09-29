//
//  ViewController.swift
//  Homework 1
//
//  Created by Yevhenii M on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        func taskOne()  {
            var array = [-2, 4, 6, -9, 0, 11, -8, -6, -77, 22]
            
            for index in array.indices {
                if array[index] < 0 {
                    array[index] = 0
                }
            }
            
            print(array)
        }
        
        func taskTwo()  {
            var array = [-2, 4, 6, -9, 0, 11, -8, -6, -77, 22]
            
            var min = array.min()!
            var max = array.max()!
            
            print("Min = \(min), Max = \(max)")
        }
        
        func taskThree() {
            var sum = 0
            var array = [-2, 4, 6, -9, 0, 11, -8, -6, -77, 22]
            
            for index in array.indices {
                sum += array[index]
            }
            
            print(sum)
        }
        
        func taskFour() {
            var month = ["January","February","March","April","May","June","July",
                        "August","September","October","November","December"]
            var dictionary: [Int: String] = [:]
            
            for index in month.indices {
                dictionary[index] = month[index]
            }
            
            print(dictionary)
        }
        
        func taskFive() {
            var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]
            var firstElem = dictionary["first"]
            var fourthElem = dictionary["fourth"]
            
            dictionary["first"] = fourthElem
            dictionary["fourth"] = firstElem
            
            print(dictionary)
        }
        
        func taskSix() -> [Int: [String]] {
            var month = ["January","February","March","April","May","June","July",
                        "August","September","October","November","December"]
            var calendar: [Int: [String]] = [:]
            
            for year in 1970...2022 {
                calendar[year] = month
            }
            
            return calendar
        }
        
        func taskSeven() -> [Int: [String]] {
            var calendar = taskSix ()
            var customMonth = ["CustomMonth"]
            
            for key in calendar.keys {
                calendar[key]! += customMonth
            }
            
            return calendar
        }
        
        func taskEight () {
            var calendar = taskSeven()
            var days: [Int] = []

            for index in 0...30 {
                days.append(index + 1)
            }

            var calendarPro: [Int: [String: [Int]]] = [:]
            
            for year in calendar.keys {
                var monthesWithDays = [String: [Int]] ()
                
                if let months = calendar[year] {
                    
                    var listOfMonthes = [String]()
                    for index in months.indices {
                        listOfMonthes.append(months[index])
                    }
                    
                    for index in listOfMonthes.indices {
                        monthesWithDays[listOfMonthes[index]] = days
                    }
                }
                
                calendarPro[year] = monthesWithDays
            }
            
            var selectedYear = 0
            var selectedMonth = ""
            var selectedDay = 0
            
            for (year, months) in calendarPro {
                if year == 2019 {
                    selectedYear = year
                    for month in months {
                        if month.key == "September" {
                            selectedMonth = month.key
                            for day in month.value {
                                if day == 1 {
                                    selectedDay = day
                                }
                            }
                        }
                    }
                }
            }
            
            print("\(selectedDay) \(selectedMonth) \(selectedYear) year")
        }
        
        func taskNine(a: Int, b: Int) {
            if a == b {
                print((a + b) * 3)
            } else if (a + b) % 2 == 0 {
                print(a + b)
            } else {
                
            }
        }
        
        func taskTen(input: String) {
            var result = input
            result.removeLast()
            
            let stringArray = result.components(separatedBy: " ")
            
            print("First word is: \(stringArray.first!)")
            print("Last word is: \(stringArray.last!)")
        }
        
        func taskEleven(battaryPercent: Int) {
            switch battaryPercent{
            case 100:
                print("Battary fully loaded")
            case 70...80:
                print("Need to charge during 6 hours")
            case 20...40:
                print("Charge your battery")
            case 0:
                print("Battery fully discharged")
            default:
                print("")
            }
        }
    }
}

