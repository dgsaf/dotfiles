# ensure interactive
if [[  ! ( $- =~ "i" ) ]]; then
    return 0
fi

# source all files in .bash.d/*.sh
source_files=~/.bash.d/*.sh
for file in ${source_files} ; do
    # echo "sourcing ${file}"
    . ${file}
done
