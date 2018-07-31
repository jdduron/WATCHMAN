/*
 * data_testp.c
 *
 *  Created on: Jul 30, 2018
 *      Author: Jose Idlabs
 */

#include "data_test.h"
#include <stdio.h>

void data_test(char data[10][10][10]){

		printf("data test pattern generated! \n");


for(int a = 0; a<4; a++)
	{
    	for(int b = 0; b<4; b++)
    		{
    		for(int c = 0; c<4; c++)
    	    		{
    	    	    	itoa(a+b+c, data[a][b][c],10); ;
    	    	    	printf("data[%d][%d][%d]=%s\n", a,b,c, data[a][b][c]);
    	    	    }
    	    }
    }
}
