cdb()
{
    bookmark=`cdbookmarks --go $@`
    if [ $? -eq 0 ]; then
        counter=0
        while read -r line;do
            counter=$(($counter+1))
            if [ $counter -eq 1 ]; then
                eval $line
            fi
            if [ $counter -eq 2 ]; then
                cd $line
            fi
            if [ $counter -eq 3 ]; then
                eval $line
            fi
        done < <(cdbookmarks --go $@)
	else
		echo "Usage: $0 <bookmark-name>"
	fi
}
