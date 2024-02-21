train_dtu:
	python eval/gen_video.py -n dtu \
	--split val -P '22 25 28'  \
	-D data/rs_dtu_4 -S 6 --scale 1

train_syns:
	python eval/gen_video.py -n multi_object -F multi_obj \
	--split val -P '22 25 28'  \
	-D data/blender_syns/castle_2 -S 0 --scale 1


train_shortcity:
	python eval/gen_video.py  -n dtu \
	--split val -P '22 25 28'  \
	-D data/shortcity -S 6 --scale 1