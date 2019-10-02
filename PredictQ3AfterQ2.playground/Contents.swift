import Foundation

struct Driver {
    let name: String
    var fp1: Double
    var fp2: Double
    var fp3: Double
    var q1: Double
    var q2: Double
    var q3: Double
}

func predictQ3(
    fp1: Double,
    fp2: Double,
    fp3: Double,
    q1: Double,
    q2: Double
    ) -> Double {
    
    let diff1 = fp2 - fp1
    let diff2 = fp3 - fp2
    let diff3 = q1 - fp3
    let diff4 = q2 - q1
    
    let averageDiff = (diff1 + diff2 + diff3 + diff4) / 4
    
    let q3 = q2 + averageDiff
    return q3
}

    var driver = Driver.init(
        name: "Instance",
        fp1: 0.0,
        fp2: 0.0,
        fp3: 0.0,
        q1: 0.0,
        q2: 0.0,
        q3: 0.0
    )
    
    let q3 = predictQ3(fp1: driver.fp1, fp2: driver.fp2, fp3: driver.fp3, q1: driver.q1, q2: driver.q2)
    driver.q3 = q3
