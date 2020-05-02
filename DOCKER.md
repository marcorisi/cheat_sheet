### Clean up dangling docker images  
`docker rmi $(docker images -f "dangling=true" -q)`  

_See here: [What are Docker \<none\>:\<none\> images?](https://www.projectatomic.io/blog/2015/07/what-are-docker-none-none-images/)_

### Force clean up dangling docker images  
`docker rmi $(docker images -f "dangling=true" -q) --force` 
