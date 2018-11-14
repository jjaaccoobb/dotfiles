echo You are running $0

while true ; do
  battery_level=`acpi -b | grep -P -o '[0-9]+(?=%)'`
  # running on a battery that goes from 100%->0% in about 10 minutes
  if [ $battery_level -eq 99 ]
  then
    notify-send --urgency critical --expire-time 1000 "AC Power Unplugged" "Running on battery power! Check plug"
  fi

  if [ $battery_level -le 97 ]
  then
      notify-send --urgency critical --expire-time 1000  "AC Power Unplugged" "Battery level is ${battery_level}%!"
  fi

  sleep 5
done
