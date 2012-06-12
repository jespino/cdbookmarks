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
		echo "Usage: cdb <bookmark-name>"
	fi
}

if [ -n "$ZSH_VERSION" ] ; then
    _cdb () {
        for bookmark in `cdbookmarks --list`; do
            compadd $bookmark
        done
    }
    compdef _cdb cdb

    _cdbookmarks () {
        _arguments : \
            '-h[show help information]' \
            '--help[show help information]' \
            '--list[list all bookmarks]' \
            '--clear[remove all bookmarks]' \
            '--go[print how to go to a bookmark]:bookmark:_cdb' \
            '--add[add a new bookmark]' \
            '--delete[delete a bookmark]:delete a bookmark:_cdb' \
            '--path[bookmark path]:bookmark path (default current path):_files -/' \
            '-p[bookmark path]:bookmark path (default current path):_files -/' \
            '--before:script to execute before change directory:' \
            '-b:script to execute before change directory:' \
            '--after:script to execute after change directory:' \
            '-a:script to execute after change directory:'
    }
    compdef _cdbookmarks cdbookmarks
fi
