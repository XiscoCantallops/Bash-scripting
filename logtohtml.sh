#!/bin/bash
echo 'Content-Type: text/html; charset="us-ascii" ' >> email.html
echo "<html>" >> email.html
echo "<Body>" >> email.html
awk 'BEGIN{print "<table>"} {print "<tr>";for(i=1;i<=NF;i++)print "<td>" $i"</td>";print "</tr>"} END{print "</table>"}' test >> email.html
echo "</Body>" >> email.html
echo "</html>" >> email.html
#mail -s "test" abc@xyz.com < email.html
