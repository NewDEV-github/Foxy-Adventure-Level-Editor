# GameSpikeTileDrawer
# Written by: First

tool
extends TileMap

class_name GameSpikeTileDrawer

"""
	Enter desc here.
"""

#-------------------------------------------------
#      Classes
#-------------------------------------------------

#-------------------------------------------------
#      Signals
#-------------------------------------------------

#-------------------------------------------------
#      Constants
#-------------------------------------------------

#-------------------------------------------------
#      Properties
#-------------------------------------------------

#-------------------------------------------------
#      Notifications
#-------------------------------------------------

#-------------------------------------------------
#      Virtual Methods
#-------------------------------------------------

#-------------------------------------------------
#      Override Methods
#-------------------------------------------------

#-------------------------------------------------
#      Public Methods
#-------------------------------------------------

func draw_from_game_data_spikes(tiles_data : Array = []):
	for i in tiles_data:
		i = i as DataGameSpike
		
		set_cellv(world_to_map(i.pos), (i.spike_id * GameSpikeData.SPIKE_TILE_COUNT) + i.direction)


#-------------------------------------------------
#      Connections
#-------------------------------------------------

#-------------------------------------------------
#      Private Methods
#-------------------------------------------------

#-------------------------------------------------
#      Setters & Getters
#-------------------------------------------------