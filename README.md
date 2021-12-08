# EQUAFL_setup

pg_dump -U firmadyne -h localhost -f EQUAFL_DATABASE firmware
pg_dump -U firmadyne -h localhost -t image_new -f EQUAFL_IMAGE_NEW firmware