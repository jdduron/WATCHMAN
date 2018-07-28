/*
 * reg_map.c
 *
 *  Created on: Jul 27, 2018
 *      Author: Jose Idlabs
 */

#include "reg_map.h"
#include <stdio.h>

int * reg_map(){

		printf("reg_map created! \n");

int regmap[10]={1,2,3,4,5,6,7,8,9,0};

for(int i = 0; i<10; i++)
	{
    	regmap[i]=10+i;
    }
		return regmap;
}
