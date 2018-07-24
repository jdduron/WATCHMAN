/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include <stdio.h>
#include <string.h>
#include "cmd_parser.h"
#include "cmd_interpreter.h"

#include "lwip/err.h"
//#include "lwip/tcp.h"
#include "lwip/udp.h"
#define MAX_ARRAY_SIZE 100
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

u16_t RemotePort;
struct ip_addr *RemoteAddr;
struct udp_pcb send_pcb;

extern int regmap[10]={0,1,2,3,4,5,6,7,8,9};

int transfer_data() {
	return 0;
}

void print_app_header()
{
	xil_printf("\n\r\n\r-----lwIP UDP echo server ------\n\r");
	xil_printf("UDP packets sent to port 6001 will be echoed back\n\r");
}
//
//err_t recv_callback(void *arg, struct udp_pcb *tpcb,
//                               struct pbuf *p, err_t err)
//{
//	/* do not read the packet if we are not in ESTABLISHED state */
//	if (!p) {
//		tcp_close(tpcb);
//		udp_recv(tpcb, NULL, tpcb->recv_arg);
//		return ERR_OK;
//	}
//
//	/* indicate that the packet has been received */
//	tcp_recved(tpcb, p->len);
//
//	/* echo back the payload */
//	/* in this case, we assume that the payload is < TCP_SND_BUF */
//	if (tcp_sndbuf(tpcb) > p->len) {
//		err = tcp_write(tpcb, p->payload, p->len, 1);
//	} else
//		xil_printf("no space in tcp_sndbuf\n\r");
//
//	/* free the received pbuf */
//	pbuf_free(p);
//
//	return ERR_OK;
//}
//
//err_t accept_callback(void *arg, struct tcp_pcb *newpcb, err_t err)
//{
//	static int connection = 1;
//
//	/* set the receive callback for this connection */
//	tcp_recv(newpcb, recv_callback);
//
//	/* just use an integer number indicating the connection id as the
//	   callback argument */
//	tcp_arg(newpcb, (void*)(UINTPTR)connection);
//
//	/* increment for subsequent accepted connections */
//	connection++;
//
//	return ERR_OK;
//}

//void clear_buf(){
//	for(int i = 0; i < MAX_ARRAY_SIZE; i++) {
//		command_buffer[i] = "0000";
//	}
//}





void udp_echo_recv(void *arg, struct udp_pcb *pcb, struct pbuf *p, struct
					ip_addr *addr, u16_t port)
{


    if (p != NULL) {

    	//An array of "strings" which holds individual commands and arguments from the payload
    	char** cmd_buffer;
    	//Creates a buffer with parsed string commands from the payload

    	command_parser(p, regmap);
    	//command_interpreter(cmd_buffer, regmap);

    	int count = 0;

    	for(int i = 0; command_buffer[i] != NULL; i++){
    		printf("%s\n", command_buffer[i]);
    		count++;
    	}

    	for(int i = 0; i < count; i++){
        	p->payload = command_buffer[i];
        	p->len = strlen(command_buffer[i]);
        	p->tot_len = strlen(command_buffer[i]);
    		udp_sendto(pcb, p, addr, port);
 		}

    }
}


int start_application()
{
	struct udp_pcb *pcb;
	err_t err;
	unsigned port = 7;

	/* create new TCP PCB structure */
	pcb = udp_new_ip_type(IPADDR_TYPE_ANY);
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	/* bind to specified @port */
	err = udp_bind(pcb, IP_ANY_TYPE, port);
	if (err != ERR_OK) {
		xil_printf("Unable to bind to port %d: err = %d\n\r", port, err);
		return -2;
	}
//
//	/* we do not need any arguments to callback functions */
//	tcp_arg(pcb, NULL);

	/* listen for connections */
//	pcb = tcp_listen(pcb);
//	if (!pcb) {
//		xil_printf("Out of memory while tcp_listen\n\r");
//		return -3;
//	}
//
//	/* specify callback to use for incoming connections */
//	tcp_accept(pcb, accept_callback);
	udp_recv(pcb, udp_echo_recv, NULL);

	xil_printf("UDP echo server started @ port %d\n\r", port);

	return 0;
}
