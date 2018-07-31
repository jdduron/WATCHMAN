#include "reg_read.h"

int reg_read(int read_addr, int* regmap){

		printf("reading: \n");

		if (read_addr < 10 && read_addr > -1){
		printf("reg: %d value: %d \n", read_addr, regmap[read_addr]);
		}


		return regmap[read_addr];
}
