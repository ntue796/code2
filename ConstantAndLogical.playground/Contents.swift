import Cocoa

let isBuilDebug = true

if !isBuilDebug != true {
    print("Build is not debug build")
}

let haveTicket = true
let isAdult = true
let isVIP = true

if haveTicket && isAdult || isVIP {
    print("Can get in the helicoper")
} else {
    print("You can not in the helicoper")
}


