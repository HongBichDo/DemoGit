**Sử dụng `cat` để xem các cấu hình về hệ thống**

* CPU
```sh
cat /proc/cpuinfo
```
* RAM
```sh
cat /proc/memoinfo
```
* File system
```sh
df -h
```
* Count the number of CPU
```sh
cat /proc/cpuinfo | grep model | uniq -c
```