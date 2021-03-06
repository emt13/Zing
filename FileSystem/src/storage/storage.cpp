// Storage server for Zing
#include "classes/FileSystem/FileSystem.h"
#include <unistd.h>
#include <iostream>
#include <string.h>
#include <sys/stat.h>

#define STORAGE_DIR "/zingStore"

// create storage directory if it doesn't exist
char* setup(){
    struct stat store;
    char* path = (char*)malloc(256 * sizeof(char));
    path[0] = '\0';
    getcwd(path, 256);
    strcat(path, STORAGE_DIR);
    if(stat(path, &store) == 0 && S_ISDIR(store.st_mode)){
        std::cout << " Storage already exists at path: " << path << std::endl;
    }else{
        std::cout << " Creating Storage " << std::endl;
        mkdir("zingStore", 0777);
    }
    return path;   
}

void reindex(FileSystem& fs, char* path){
    fs.crawl(path, strlen(path));
}

// actually start the storage
void start(FileSystem& fs){
    // BASIC TESTING LOOP
    while(1){
       break; 
    }
}

int main(int args, char** argc){

    char* path = setup();    
    FileSystem fs = FileSystem();
    reindex(fs, path);
    start(fs);   
}
