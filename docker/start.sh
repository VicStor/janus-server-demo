#!/bin/bash
echo $ID
cp -a /opt/janus/etc/janus/. /$ID
cd configure
./configure --debug_level $DEBUG_LEVEL --rtp_port_range $RTP_PORT_RANGE --stun_server $STUN_SERVER --stun_port $STUN_PORT --string_ids 1 --admin_key $ADMIN_KEY --server_name $SERVER_NAME --config_base /$ID --ws_port $WS_PORT --admin_ws_port $ADMIN_WS_PORT --log_prefix $LOG_PREFIX
cd /opt/janus/bin/
./janus --configs-folder=/$ID --nat-1-1=$DOCKER_IP