/*
 * reg_write.c
 *
 *  Created on: Jul 23, 2018
 *      Author: Jose Idlabs
 */
#include "reg_write.h"

int reg_write(int write_addr, int reg_value, int* regmap){

		printf("reg_write! \n");
		if (write_addr < 9 && write_addr > -1){
		regmap[write_addr]=reg_value;
		printf("reg: %d value: %d \n", write_addr, regmap[write_addr]);
		}
		return 0;
//	return regmap[read_addr];
}


