sudo gedit /etc/login.defs

echo "PASS_MAX_DAYS   90"
echo "PASS_MIN_DAYS   10"
echo "PASS_WARN_AGE   7"

echo "Press Enter to continue:"
read
sudo gedit /etc/pam.d/common-auth
echo "Add this to end of file: `auth required pam_tally2.so deny=5 onerr=fail unlock_time=1800`"

echo "Press Enter to continue:"
read
sudo gedit /etc/lightdm/lightdm.conf
echo "Add this to under the line [Seat:*]: `allow-guest=false`

echo "Press Enter to continue:"
read
