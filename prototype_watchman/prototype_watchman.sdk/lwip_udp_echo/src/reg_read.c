#include "reg_read.h"

int reg_read(int read_addr, int** regmap){

		printf("reg_read! \n");

		if (read_addr < 9 && read_addr > -1){
		printf("reg: %d value: %d \n", read_addr, regmap[read_addr]);
		}


		return 0;
//	return regmap[read_addr];
}
