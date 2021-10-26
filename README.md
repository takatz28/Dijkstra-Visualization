# Dijkstra Algorithm Visualizer
A MATLAB-based app capable of visualizing the shortest paths and spanning trees from an input directed graph using the Dijkstra algorithm.

#### Requirements
* Software:
  * MATLAB R2019a or later.
* Input file:
  * The file must be named 'Graph.dat', and must follow the given format:
    * Node name must be numbers from 1-1000000
	* Weights must be between 0-9 (indicated by red numbers in image)
<p align="right">
  <img width="175" height="175" src="https://github.com/takatz28/Dijkstra-Visualization/blob/main/docs/GraphFormat.JPG">
</p>


#### Operating Modes:
* _Auto:_
  * Allows the user to display an individual node's shortest path tree (SPT). The output file will consist of all possible paths for all nodes in the graph.
<p align="center">
  <img width="540" height="640" src="https://github.com/takatz28/Dijkstra-Visualization/blob/main/docs/Auto.JPG">
</p>

* _Manual:_
  * Lets the user choose the start and end nodes for the graph. The output file generated will be based on the starting node.
<p align="center">
  <img width="540" height="640" src="https://github.com/takatz28/Dijkstra-Visualization/blob/main/docs/Manual.JPG">
</p>
