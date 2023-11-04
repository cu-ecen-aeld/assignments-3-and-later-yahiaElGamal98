#include <stdio.h>
#include <stdlib.h>
#include <syslog.h>
#include <errno.h>
#include <string.h>


int main(int argc, char* argv[])
{
    	openlog(NULL,0,LOG_USER);
    	FILE* filePtr;
    	if(argc==3)
	{
	    filePtr=fopen(argv[1],"w+");
	    if(NULL==filePtr)
	    {
	 	return 1;
	    }
	    else
	    {
		fputs(argv[2],filePtr);
		syslog(LOG_DEBUG, "Writing %s to %s\n" , argv[2], argv[1]);
		fclose(filePtr);
		syslog(LOG_ERR, "Output of writing into file %s : %s" , argv[1], strerror(errno));
		return 0;
	    }	
	}
	else
	{
		syslog(LOG_DEBUG, "Wrong number of arguments");
		return 1;
	}
}

