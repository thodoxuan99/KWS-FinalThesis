from serial import Serial

from datetime import datetime
import os

terminator = "\r\n"
port = "COM9"
baurate = 115200

def get_time():
    now = datetime.now() # current date and time
    time = now.strftime("%m%d%Y_%H%M%S")
    return time

def main():
    serial = Serial(port,baurate)
    get_output = True
    buffer = b''
    while(1):
        if(get_output):
            val = input("Window length: ")
            folder_name = input("Audio name: ")
            os.mkdir("./{}".format(folder_name)) 
            f = open("{}/{}.txt".format(folder_name,get_time()),"w")
            serial.write(val.encode())
            serial.write(('\r\n').encode())
            get_output = False
        else:
            line = serial.readline()
            print(line)
            if( line == terminator.encode()):
                print("Audio data",buffer)
                f.write(buffer.decode())
                f.close()
                get_output = True
            elif len(line) > 0 :
                buffer = line
if __name__ == "__main__":
    main()