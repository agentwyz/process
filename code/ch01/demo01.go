package ch01

import (
	"sync"
)


func test() {
	var mailbox uint8

	/*
	sync.RWMutex该结构体是针对读写操作的同步的
	*/
	var lock sync.RWMutex

	/*
	sendCond表示发送
	recvCond表示接收: 需要读锁
	*/
	sendCond := sync.NewCond(&lock)
	recvCond := sync.NewCond(&lock.RLocker())

}