## Permission đối với file/folder
**Mỗi đối tượng gắn với 3 loại quyền: read, write, execute. Mỗi quyền được chỉ định cho 3 loại Users**
* owner: mặc định là user tạo ra đối tượng
* group: nhóm user có quyền giống nhau, mặc định ban đầu là group mà owner ở trên
* other: tất cả user không thuộc 2 loại trên

## Command 

| Commands | Result | Syntax |
|----------|--------|--------|
| chmod | change mode - thay đổi quyền với file | chmod [option] [MODE ] <file> |
| chown | change owner - thay đổi quyền sở hữu | chown [option] user:group <file> |
| chgrp | change group thay đổi nhóm sở | chgrp [option] <group> <file> |

## Example 