#!/bin/bash

echo ""
echo "----------- Comment-out-specified-test-suites.sh -----------"
echo ""

# Variables
choice () {
    local choice=$1
    if [[ ${opts[choice]} ]] # toggle
    then
        opts[choice]=
    else
        opts[choice]=+
    fi
}

PS3='
Please enter your choice(s): '
while :
do
clear

options=("5.12 ${opts[1]}" "5.13 ${opts[2]}" "5.14 ${opts[3]}" "5.16 ${opts[4]}" "All ${opts[5]}" "Done ${opts[6]}")

select opt in "${options[@]}"
    do
        case $opt in
            "5.12 ${opts[1]}")
                choice 1
                break
                ;;
            "5.13 ${opts[2]}")
                choice 2
                break
                ;;
            "5.14 ${opts[3]}")
                choice 3
                break
                ;;
            "5.16 ${opts[4]}")
                choice 4
                break
                ;;
            "All ${opts[5]}")
                choice 5
                break
                ;;
            "Done ${opts[6]}")
                break 2
                ;;
                *) printf '%s\n' 'Please Choose Between 1-6';;
        esac
    done
done

printf '%s\n\n' 'Options chosen:'
for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
        printf '%s\n' "Option $opt"
    fi
done

if [ "${opts[opt]}" = "" ];then
    exit
fi


# INSTALLATION BY SELECTION
# 1) 5.12
for opt in "${!opts[@]}"
do
    if [[ ${opts[opt]} ]]
    then
        case $opt in 
            # 1) 5.12.Expect-5.45.4.sh
            1)
            if grep -q "#make test" 5.12.Expect-5.45.4.sh || grep -q "#make check" 5.12.Expect-5.45.4.sh;then
                sed -i '/make test/s/^#//g' 5.12.Expect-5.45.4.sh
                sed -i '/make check/s/^#//g' 5.12.Expect-5.45.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.12.Expect-5.45.4.sh
                sed -e '/make check/ s/^#*/#/' -i 5.12.Expect-5.45.4.sh
            fi
            ;;
            # 2) 5.13.DejaGNU-1.6.2.sh
            2)
            if grep -q "#make test" 5.13.DejaGNU-1.6.2.sh || grep -q "#make check" 5.13.DejaGNU-1.6.2.sh;then
                sed -i '/make test/s/^#//g' 5.13.DejaGNU-1.6.2.sh
                sed -i '/make check/s/^#//g' 5.13.DejaGNU-1.6.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.13.DejaGNU-1.6.2.sh
                sed -e '/make check/ s/^#*/#/' -i 5.13.DejaGNU-1.6.2.sh
            fi
            ;;
            # 3) 5.14.M4-1.4.18.sh
            3)
            if grep -q "#make test" 5.14.M4-1.4.18.sh || grep -q "#make check" 5.14.M4-1.4.18.sh;then
                sed -i '/make test/s/^#//g' 5.14.M4-1.4.18.sh
                sed -i '/make check/s/^#//g' 5.14.M4-1.4.18.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.14.M4-1.4.18.sh
                sed -e '/make check/ s/^#*/#/' -i 5.14.M4-1.4.18.sh
            fi
            ;;
            # 4) 5.16.Bash-5.0.sh
            4)
            if grep -q "#make test" 5.16.Bash-5.0.sh || grep -q "#make check" 5.16.Bash-5.0.sh;then
                sed -i '/make test/s/^#//g' 5.16.Bash-5.0.sh
                sed -i '/make check/s/^#//g' 5.16.Bash-5.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.16.Bash-5.0.sh
                sed -e '/make check/ s/^#*/#/' -i 5.16.Bash-5.0.sh
            fi
            ;;
            
            

            
            # 5) All
            5)
            # 1) 5.12.Expect-5.45.4.sh
            if grep -q "#make test" 5.12.Expect-5.45.4.sh || grep -q "#make check" 5.12.Expect-5.45.4.sh;then
                sed -i '/make test/s/^#//g' 5.12.Expect-5.45.4.sh
                sed -i '/make check/s/^#//g' 5.12.Expect-5.45.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.12.Expect-5.45.4.sh
                sed -e '/make check/ s/^#*/#/' -i 5.12.Expect-5.45.4.sh
            fi
            # 2) 5.13.DejaGNU-1.6.2.sh
            if grep -q "#make test" 5.13.DejaGNU-1.6.2.sh || grep -q "#make check" 5.13.DejaGNU-1.6.2.sh;then
                sed -i '/make test/s/^#//g' 5.13.DejaGNU-1.6.2.sh
                sed -i '/make check/s/^#//g' 5.13.DejaGNU-1.6.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.13.DejaGNU-1.6.2.sh
                sed -e '/make check/ s/^#*/#/' -i 5.13.DejaGNU-1.6.2.sh
            fi
            # 3) 5.14.M4-1.4.18.sh
            if grep -q "#make test" 5.14.M4-1.4.18.sh || grep -q "#make check" 5.14.M4-1.4.18.sh;then
                sed -i '/make test/s/^#//g' 5.14.M4-1.4.18.sh
                sed -i '/make check/s/^#//g' 5.14.M4-1.4.18.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.14.M4-1.4.18.sh
                sed -e '/make check/ s/^#*/#/' -i 5.14.M4-1.4.18.sh
            fi
            # 4) 5.16.Bash-5.0.sh
            if grep -q "#make test" 5.16.Bash-5.0.sh || grep -q "#make check" 5.16.Bash-5.0.sh;then
                sed -i '/make test/s/^#//g' 5.16.Bash-5.0.sh
                sed -i '/make check/s/^#//g' 5.16.Bash-5.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.16.Bash-5.0.sh
                sed -e '/make check/ s/^#*/#/' -i 5.16.Bash-5.0.sh
            fi
            ;;
        esac
    fi
done