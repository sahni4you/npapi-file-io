g++ npapi-file-io.cpp file-io.cpp -c -fPIC -Wall -DOS_LINUX=1 -I"third_party" -I"third_party/npapi" -m32 && g++ -shared -W1,-soname,npapi-file-io-32.so -o npapi-file-io-32.so npapi-file-io.o file-io.o -m32 && cp npapi-file-io-32.so ../../../test/extension/