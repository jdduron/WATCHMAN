#include "cmd_parser.h"

void command_parser(struct pbuf *p){
	char* payload = p->payload;
	int cmd_buf_size = 0;
	const char delimiter[2] = "/";

	//Tokenize the string using delimiter
	char* token = strtok(payload, delimiter);
//	char **command_buffer[MAX_ARRAY_SIZE];
	command_buffer[cmd_buf_size] = token;
	cmd_buf_size++;

	while (token != NULL && cmd_buf_size < 1000) {

		token = strtok(NULL, delimiter);
		command_buffer[cmd_buf_size] = token;
		cmd_buf_size++;
	}

	for(int i = 0; i < cmd_buf_size; i++){
		printf("%s\n", command_buffer[i]);
	}
	command_buffer[cmd_buf_size] = NULL;

//	return command_buffer;

}
