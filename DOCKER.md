### clean up dangling docker images  
`docker rmi $(docker images -f "dangling=true" -q)` 

### force clean up dangling docker images  
`docker rmi $(docker images -f "dangling=true" -q) --force` 
