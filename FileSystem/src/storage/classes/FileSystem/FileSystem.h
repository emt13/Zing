#include <unordered_map>
#include <vector>

#define FS_SAVE_FILE "fssave.sv"

class FileSystem { 
    public:
        FileSystem();
        void crawl(char* path, int size);

    private:
        //std::unordered_map<std::string, int> hashToID;

};
