function mem_clean {

echo "Note: You must run NSA Smacker in a root shell to use this (Try su - OR sudo bash)";
echo "Cleaning up memory..."
echo 3 > /proc/sys/vm/drop_caches

}
