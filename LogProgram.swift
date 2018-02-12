//
//  LogProgram.swift
//  Calculates the maximum number of logs that can go on
//  a truck, if you know their length
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//

//define variables
var truckCanCarry: Double = 1100
var logWeigh: Double = 20
var numberOfLogsCanCarry : Double
var lengthOfLog : Double = 0

while (true) {
    //ask for lengthof logs
    print("Input the length of your logs (0.25 m, 0.5 m or 1m): ")
    //get input***********
    let input = readLine(strippingNewline: true)
    //check if input is a number (Can't do try)
	if let check = Double(input!), check != nil {
		let lengthOfLog = Double(input!)
		let numberOfLogsCanCarry = truckCanCarry / ( logWeigh * lengthOfLog! )
		//need to have the !
		print("Maximum number of logs the truck can carry:  \(numberOfLogsCanCarry)")
		break
	} else {
		print("ERROR:\nPut in a numeric value. TRY AGAIN. \n\n")
	}
}
