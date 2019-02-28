#!/usr/bin/env python
import rospy
from roadmap.msg import GridInfo
from nav_msgs.msg import OccupancyGrid

grid = OccupancyGrid()
pub = rospy.Publisher('/brushfire_map',OccupancyGrid,queue_size=10)
pub_info = rospy.Publisher('/brushfire_map_info', GridInfo, queue_size=100)

def callback(data):
	global grid
	grid = data
	width = grid.grid.info.width
	height = grid.grid.info.height
	

	brushfire(grid,width,height)
	print "callback successfull"
	
def brushfire(g,w,h):
	#grid = g
	#width = w
	#height = h
	global pub
	global pub_info
	print("sup")

	#handles first and last row for out of bounds
	for i in range(0,w):
		g.grid.data = list(g.grid.data)
		g.grid.data[i] = 1
		g.grid.data = tuple(g.grid.data)
		#print(g.grid.data[i])
		
	
	for i in range((w*h-w),(w*h)):
		g.grid.data = list(g.grid.data)
		g.grid.data[i] = 1
		g.grid.data = tuple(g.grid.data)

	#right side
	for i in range(0,h):
		g.grid.data = list(g.grid.data)
		g.grid.data[(i*w)-1] = 1
		g.grid.data = tuple(g.grid.data)

	#left side
	for i in range(0, h):
		g.grid.data = list(g.grid.data)
		g.grid.data[i*w] = 1
		g.grid.data = tuple(g.grid.data)

	#FIRST PASS AS 100
	for i in range(0,(w*h)):
		if(g.grid.data[i] == 100):
			setNeighbors(g, w, h, i, 1)

	num = 1
	foundNum = True
	while(foundNum):
		foundNum = False
		for i in range(0, (w*h -1)):
			if (g.grid.data[i]==num):
				foundNum = True
				#print("i matched num")
				#print("i")
				#print(i)
				#print(num)
				setNeighbors(g, w, h, i, num+1)
		num+=1
	line = "";
	for i in range(0, w*h):
		line = line + (str(g.grid.data[i]) + ", ")
		if((i%100)==1):
			continue
			#print(line)
	pub.publish(g.grid)

	rospy.sleep(0.5)
	prettyOut(g.grid.data, w)
	pub_info.publish(g)

def setNeighbors(g, w, h, i, num):
	topLeft = i-w-1
	topMid = i-w
	topRight = i-w+1
	left = i-w
	mid = i
	right = i+1
	botLeft = i+w-1
	botMid = i+w
	botRight = i+w+1
	max = (h*w)-1

	if(topLeft > 0 and topLeft < (h*w)-1 and g.grid.data[topLeft]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[topLeft] = num
		g.grid.data = tuple(g.grid.data)
	if(topMid > 0 and topMid < (h*w)-1 and g.grid.data[topMid]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[topMid] = num
		g.grid.data = tuple(g.grid.data)
	if(topRight > 0 and topRight < (h*w)-1 and g.grid.data[topRight]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[topRight] = num
		g.grid.data = tuple(g.grid.data)
	if(left > 0 and left < (h*w)-1 and g.grid.data[left]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[left] = num
		g.grid.data = tuple(g.grid.data)
	if(mid > 0 and mid < (h*w)-1 and g.grid.data[mid]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[mid] = num
		g.grid.data = tuple(g.grid.data)
	if(right > 0 and right < (h*w)-1 and g.grid.data[right]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[right] = num
		g.grid.data = tuple(g.grid.data)
	if(botLeft > 0 and botLeft < (h*w)-1 and g.grid.data[botLeft]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[botLeft] = num
		g.grid.data = tuple(g.grid.data)
	if(botMid > 0 and botMid < (h*w)-1 and g.grid.data[botMid]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[botMid] = num
		g.grid.data = tuple(g.grid.data)
	if(botRight > 0 and botRight < (h*w)-1 and g.grid.data[botRight]==0):
		g.grid.data = list(g.grid.data)
		g.grid.data[botRight] = num
		g.grid.data = tuple(g.grid.data)

	


	
def main():
	global pub
	rospy.init_node('brushfire',anonymous=True)
	rospy.Subscriber("/mapInfo",GridInfo,callback)
	pub = rospy.Publisher('/brushfire_map',OccupancyGrid,queue_size=10)
	rate = rospy.Rate(10)

	rospy.spin()
	

def prettyOut(arr, width):
	sOut = ""
	for i in range(len(arr)):
		if (arr[1] == 100):
			sOut += "99 "
		else:
 			sOut += str(arr[i]).zfill(2) + " ";
		if (i % width == width -1):
			print(sOut)
			sOut = ""

if __name__ == '__main__':
	print "Starting up..."
	main()