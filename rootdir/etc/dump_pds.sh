#!/system/bin/sh

DUMP=/data/cache/pds-dump.img

if [ ! -f $DUMP ]; then
    # Make a copy of pds in /data/cache
    cp /dev/block/platform/msm_sdcc.1/by-name/pds $DUMP-temp
    # Prevent init from using a partially created file
    mv $DUMP-temp $DUMP
fi
