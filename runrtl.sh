
echo "MQTT_URL = ${MQTT_URL}"
echo "MQTT_USER = ${MQTT_USER}"
echo "MQTT_PASSWORD = ${MQTT_PASSWORD}"
echo "MQTT_RTL433_EVENT_QUEUE" = ${MQTT_RTL433_EVENT_QUEUE}

FSTRING="${MQTT_URL},user=${MQTT_USER},pass=${MQTT_PASSWORD},events=${MQTT_RTL433_EVENT_QUEUE}"

echo "FSTRING = ${FSTRING}"

echo Running: rtl_433 -v -M time:tz \
    -M protocol \
    -M level \
    -C si \
    -F "${FSTRING}" \
    -F kv

rtl_433 -v -M time:tz \
    -M protocol \
    -M level \
    -C si \
    -F "${FSTRING}" \
    -F kv