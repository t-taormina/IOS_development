//
//  ContentView.swift
//  hacking
//
//  Created by tyler on 3/8/23.
//An amazing all-inclusive resort vacation is waiting for you...

import SwiftUI

/*:
 NEXT STEPS
 =============================================================
 - Add a header to the third section, saying “Amount per person”
 - Add another section showing the total amount for the check – i.e., the original amount plus tip
    value, without dividing by the number of people.
 - Change the tip percentage picker to show a new screen rather than using a segmented control, and
    give it a wider range of options – everything from 0% to 100%. Tip: use the range 0..<101 for your
    range rather than a fixed array.
 */

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 0
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    let tipPercentages = [0, 10, 15, 20, 25]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let percent = Double(tipPercentage)
        let tip = (checkAmount / 100) * percent
        let total = tip + checkAmount
        return total / peopleCount
    }
    
    var checkTotalIncludingTip: Double {
        let percent = Double(tipPercentage)
        let tip = (checkAmount / 100) * percent
        return tip + checkAmount
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format:
                            .currency(code: Locale.current.currency!.identifier))
                    .keyboardType(.decimalPad)
                    .focused($amountIsFocused)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages.sorted(), id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip would you like to leave?")
                }
                
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currency!.identifier))
                } header: {
                    Text("Amount per person")
                }
                
                Section {
                    Text(checkTotalIncludingTip, format: .currency(code: Locale.current.currency!.identifier))
                } header: {
                    Text("Total amount due including tip")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
