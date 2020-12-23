#!/bin/bash

x=1; while [ $x ]
do
	clear
	git log --all --decorate --oneline --graph | head
	sleep 1
done
