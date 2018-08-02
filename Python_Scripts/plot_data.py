#!/usr/bin/env python
############################################################################
#Author: Ky Ho, Jose Duron
#Date:7/18/19
# Main ETHERNET Module to Send and Recieve UDP DATAGRAMS to MICROZED
#
#This module uses a fixed IP address and port number that must match the
#IP address of the MICROZED. This module restricts the sent packages to be
#predefined commands: ping, read, rite, send, and exit.
#This module plots data
##############################################################################
import sys
import socket
import optparse
import time
import matplotlib.pyplot as plt
from matplotlib.ticker import NullFormatter  # useful for `logit` scale
import numpy as np



#define the IP and port for the zynq
UDP_IP = "192.168.1.10"
UDP_PORT = 8

#Creates the socket
def setup_connection():
    #Display
    print "UDP target IP:", UDP_IP
    print "UDP target port:", UDP_PORT
    sock = socket.socket(socket.AF_INET, # Internet
                        socket.SOCK_DGRAM) # UDP
    return sock

def main():

    sock = setup_connection()
    sock.bind(("", UDP_PORT))

    recv_flag = 0

    plt.figure(1)
    plt.ion()
    
    plt.subplot(221)
    plt.draw()
#    while (recv_flag != -1):
    while (1):
        
        data, server = sock.recvfrom(8192)
        # if(data[-3:-1] == 'end'):
        #     recv_flag = -1;
        print >>sys.stderr, 'recieved "%s"' % data
        if data.startswith('head'):
            if data[5:9]=='test':
                A=data[10:-3]
                B = [int(x) for x in A.split('/') if x.strip()]

            y = np.zeros([4,16], np.int32)
            #outfile = open('test3', 'w')
            count=0
            for a in range(0,4):
                for b in range(0,16):
                    y[a][b]=B[count]
                    count +=1
     #       outfile.close()
            recv_flag =-1


        # plot with various axes scales
        
        x = np.linspace(0, 15, 16)

        # linear
        plt.subplot(221)
        plt.plot(x,y[0][:])
        plt.title('CH0')
        plt.grid(True)


        # log
        plt.subplot(222)
        plt.plot(x,y[1][:])
        plt.title('CH1')
        plt.grid(True)


        # symmetric log
        plt.subplot(223)
        plt.plot(x,y[2][:])
        plt.title('CH2')
        plt.grid(True)

        # logit
        plt.subplot(224)
        plt.plot(x,y[3][:])
        plt.title('CH3')
        plt.grid(True)
        # Format the minor tick labels of the y-axis into empty strings with
        # `NullFormatter`, to avoid cumbering the axis with too many labels.
        plt.gca().yaxis.set_minor_formatter(NullFormatter())
        # Adjust the subplot layout, because the logit one may take more space
        # than usual, due to y-tick labels like "1 - 10^{-3}"
        plt.subplots_adjust(top=0.92, bottom=0.08, left=0.10, right=0.95, hspace=0.25,
                            wspace=0.35)
        
        plt.draw()
        plt.pause(.1)
        plt.clf()
        #plt.show()
        
        #time.sleep(5)
        #time.sleep(100)
        #plt.close('all')


main()
