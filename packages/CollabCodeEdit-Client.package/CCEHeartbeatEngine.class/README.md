I keep connections open.

Some call me HeartbeatEngine. Most call me Pacemaker. Tock. Tock.
I am necessary because Squeaks websocket implementation doesn't keep connections open if nothing comes through.
So every n seconds I tell my CCEClient that he has to send a heartbeat message.
Tock. Tock.
I have a method that tells me how big the n is, and I can be started and stopped.
But if I am not stopped, I will work eternal.
Tock. Tock.
That is the price I must pay for my sins.

Instance Variables
	client:		aCCEClient

client
	- Whom I notify that a heartbeat shall be sent
