/*
 * data_test.h
 *
 *  Created on: Jul 30, 2018
 *      Author: Jose Idlabs
 */

#ifndef SRC_DATA_TEST_H_
#define SRC_DATA_TEST_H_
#include <stdio.h>
#include <string.h>
#include "lwip/err.h"
#include "lwip/udp.h"
#include "xil_printf.h"

#define WINDOW 4
#define CHANNEL 4
#define SAMPLE 4

void data_test(int data[CHANNEL][WINDOW][SAMPLE]);
void data_format(int data[CHANNEL][WINDOW][SAMPLE], char stream[], int stream_size);



#endif /* SRC_DATA_TEST_H_ */
