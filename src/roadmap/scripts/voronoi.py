#!/usr/bin/env python

import rospy
from roadmap.msg import GridInfo
from nav_msgs.msg import OccupancyGrid


grid = OccupancyGrid()
pub = rospy.Publisher('/voronoi_map', OccupancyGrid, queue_size=10)


def voronoi(g, w, h):
	global pub
	voronoiGrid = OccupancyGrid()
	voronoiGrid.info.height = h
	voronoiGrid.info.width = w
	voronoiGrid.info.resolution = g.grid.info.resolution
	for i in range (0,(w*h)):
		#topLeft = i-w-1
		topMid = i-w
		#topRight = i-w+1
		left = i-1
		mid = i
		right = i+1
		#botLeft = i+w-1
		botMid = i+w
		#botRight = i+w+1

		if(g.grid.data[mid] != 100):
			localMax = True
			currentNode = g.grid.data[i]
			if(topMid >= 0 and topMid < (h*w)-1 and g.grid.data[topMid]>currentNode ):
				localMax = False
			if(left >= 0 and left < (h*w)-1 and g.grid.data[left]>currentNode ):
				localMax = False

			#work
			if(right >= 0 and right < (h*w)-1 and g.grid.data[right]>currentNode ):
				localMax = False
			if(botMid >= 0 and botMid < (h*w)-1 and g.grid.data[botMid]>currentNode):
				localMax = False

			if(localMax == True):
				voronoiGrid.data = list(voronoiGrid.data)
				# if(topMid > 0):
				# 	voronoiGrid.grid.data[topMid] = 0
				# if(left > 0):
				# 	voronoiGrid.grid.data[left] = 0
				# if(right < (w*h -1)):
				# 	voronoiGrid.grid.data[right] = 0
				# if(botMid < (w*h -1)):
				# 	voronoiGrid.grid.data[botMid] = 0
				voronoiGrid.data[mid] = 127
				voronoiGrid.data = tuple(voronoiGrid.data)
			else:
				voronoiGrid.data = list(voronoiGrid.data)
				voronoiGrid.data[mid] = 0
				voronoiGrid.data = tuple(voronoiGrid.data)
		else:
			voronoiGrid.data = list(voronoiGrid.data)
			voronoiGrid.data[mid] = 0
			voronoiGrid.data = tuple(voronoiGrid.data)


	print("Attempt Publish")
	pub.publish(voronoiGrid)
	print("Published/??????")


	

def callback(data):
	global grid
	print("Callback Begin")
	grid = data
	width = grid.grid.info.width
	height = grid.grid.info.height
	voronoi(grid, width, height)

def main():
	rospy.init_node('voronoi', anonymous=True)
	sub = rospy.Subscriber('/brushfire_map_info', GridInfo, callback)
	rate = rospy.Rate(10)
	rospy.spin()
	
	

if __name__ == '__main__':

	print("GO!")
	main()