#!/bin/bash

rm -rf ./myhosts

echo "请输入要使用的节点数"
read m

echo "每个节点含有的逻辑处理器个数"
read n

for ((j=0;j<$m;j=j+1))do
        
        echo "请输入第"$(($j+1))"个节点ID，还有$(($m-$j-1))个节点需要输入"
	read id
	for (( i=0; i<$n; i=i+1 )); do
    	echo "compute-0-"$id"" >> myhosts
	done
        

done 
