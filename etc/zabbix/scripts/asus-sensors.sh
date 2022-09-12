#!/bin/bash


case "${1}" in
    "acpitz-acpi-0-temp-current" )
        /usr/bin/sensors | grep -A1 'Adapter: ACPI interface' | grep temp1 | awk '{ print $2}' | sed s/'+'//g | sed s/'°C'//g
    ;;
    "acpitz-acpi-0-temp-critical" )
        /usr/bin/sensors | grep -A1 'Adapter: ACPI interface' | grep temp1 | awk '{ print $5}' | sed s/'+'//g | sed s/'°C'//g | sed s/')'//g
    ;;
    #Adapter: ISA adapter
    "package-id-0-current")
        /usr/bin/sensors |  grep 'Package id 0' | awk '{ print $4 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'/''/g
    ;;
    "package-id-0-critical")
        /usr/bin/sensors |  grep 'Package id 0' | awk '{ print $10 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'/''/g
    ;;
    "core-0-current")
        /usr/bin/sensors |  grep 'Core 0' | awk '{ print $3 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'//g
    ;;
    "core-0-critical")
        /usr/bin/sensors |  grep 'Core 0' | awk '{ print $9 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'//g
    ;;
    "core-1-current")
        /usr/bin/sensors |  grep 'Core 1' | awk '{ print $3 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'//g
    ;;
    "core-1-critical")
        /usr/bin/sensors |  grep 'Core 1' | awk '{ print $9 }' | sed s/'+'//g | sed s/'°C'//g | sed s/')'//g
    ;;
esac
