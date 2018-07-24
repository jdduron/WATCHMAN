#include "reg_read.h"

int reg_read(int read_addr, int** regmap){

		printf("reg_read! \n");
		for ( int a=0; a<10; a++){
		printf("reg: %d value: %d \n", a, regmap[a]);
		}
		return 0;
//	return regmap[read_addr];
}
