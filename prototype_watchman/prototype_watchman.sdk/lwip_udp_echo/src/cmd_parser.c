#include "cmd_parser.h"
#include "reg_read.h"
#include "reg_write.h"
#include <stdlib.h>

void command_parser(struct pbuf *p, int* regmap){
	char* payload = p->payload;
	int cmd_buf_size = 0;
	const char delimiter[2] = "/";

	//Tokenize the string using delimiter
	char* token = strtok(payload, delimiter);

	command_buffer[cmd_buf_size] = token;
	cmd_buf_size++;
	int a,b;
	while (token != NULL && cmd_buf_size < 1000) {

		token = strtok(NULL, delimiter);
		command_buffer[cmd_buf_size] = token;
		cmd_buf_size++;
	}

	command_buffer[cmd_buf_size] = NULL;

	for(int i = 2; i < cmd_buf_size-2; i++){

		printf("this: %s\n", command_buffer[i]);
		if(strcmp(command_buffer[i],"ping") == 0){
			printf("pong\n");
		}
		else if(strcmp(command_buffer[i],"read") == 0){

			a=strtol(command_buffer[i+1],NULL,10);
			reg_read(a, regmap);
			i++;
		}
		else if(strcmp(command_buffer[i],"rite") == 0){

			a=strtol(command_buffer[i+1],NULL,10);
			b=strtol(command_buffer[i+2],NULL,10);
			reg_write(a, b, regmap);
			i+=2;
		}
		else{
			printf("%s is not a valid command\n", command_buffer[i]);
		}

	}

}
