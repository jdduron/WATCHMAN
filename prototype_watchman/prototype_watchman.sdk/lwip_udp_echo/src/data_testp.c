/*
 * data_testp.c
 *
 *  Created on: Jul 30, 2018
 *      Author: Jose Idlabs
 */

#include "data_test.h"
#include <stdio.h>

void data_test(int data[WINDOW][CHANNEL][SAMPLE]){

	printf("data test pattern generated! \n");

	for(int a = 0; a<WINDOW; a++)
	{
		for(int b = 0; b<CHANNEL; b++)
		{
			for(int c = 0; c<SAMPLE; c++)
			{
				data[a][b][c] = c;
				printf("data[%d][%d][%d]=%d\n", a,b,c, data[a][b][c]);
   	        }
   	    }
	}
}
