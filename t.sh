#! /bin/sh

output=$(trivy i --exit-code 1 --ignore-unfixed --severity HIGH,CRITICAL golang:1.12)
echo $output
totalVuln=$(echo "$output" | awk /Total/ | awk '{print $2}')
echo Total Vulns: $totalVuln
