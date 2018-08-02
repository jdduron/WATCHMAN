/*
 * data_testp.c
 *
 *  Created on: Jul 30, 2018
 *      Author: Jose Idlabs
 */

#include "data_test.h"
#include <stdio.h>

void data_test(int data[CHANNEL][WINDOW][SAMPLE]){

	printf("data test pattern generated! \n");

	for(int a = 0; a<CHANNEL; a++)
	{
		for(int b = 0; b<WINDOW; b++)
		{
			for(int c = 0; c<SAMPLE; c++)
			{
				data[a][b][c] = c;
				printf("data[%d][%d][%d]=%d\n", a,b,c, data[a][b][c]);
   	        }
   	    }
	}
}

void data_rand(int data[CHANNEL][WINDOW][SAMPLE]){

	printf("data test pattern generated! \n");

	for(int a = 0; a<CHANNEL; a++)
	{
		for(int b = 0; b<WINDOW; b++)
		{
			for(int c = 0; c<SAMPLE; c++)
			{
				data[a][b][c] = rand() % 4096;
				//printf("data[%d][%d][%d]=%d\n", a,b,c, data[a][b][c]);
   	        }
   	    }
	}
}

void data_format(int data[CHANNEL][WINDOW][SAMPLE], char stream[], int stream_size){

	char data_string_value[10];

	strcpy(stream, "head");
	strcat(stream, "/test");
	for(int a = 0; a<CHANNEL; a++)
	{
		for(int b = 0; b<WINDOW; b++)
		{
			for(int c = 0; c<SAMPLE; c++)
			{
					itoa( data[a][b][c],data_string_value,10);
		    		strcat(stream, "/");
		    		strcat(stream, data_string_value);

   	        }
   	    }
	}
	strcat(stream, "/");
	strcat(stream, "end");
	printf("Inside stream: %s\n" , stream);


}
