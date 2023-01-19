
echo "MQTT_URL = ${MQTT_URL}"
echo "MQTT_USER = ${MQTT_USER}"
echo "MQTT_PASSWORD = ${MQTT_PASSWORD}"

FSTRING="${MQTT_URL},user=${MQTT_USER},pass=${MQTT_PASSWORD}"

echo "FSTRING = ${FSTRING}"

echo rtl_433 -v -M time:tz \
    -M protocol \
    -M level \
    -C si \
    -F ${FSTRING} \
    -F kv