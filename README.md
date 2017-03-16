# sproto
sproto like protobuf,but sproto is easy to lua, sproto is write by cloudwu.


if you first try sproto,clone this repository and build.
if you want learn more,try cloudwu's repository for more wiki.
https://github.com/cloudwu/sproto

# build
```bash
cd lua
make linux
cp ./lua ../sproto
cd lpeg
make linux
cp ./lpeg.so ../sprpto 
cd sproto
make linux
```
  
# example
  
  
```bash
./lua helloworld.lua
```

![image](https://github.com/ThisisGame/sproto/blob/master/image/helloworld.png)
  
  
