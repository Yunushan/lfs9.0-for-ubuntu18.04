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

options=("5.12 ${opts[1]}" "5.13 ${opts[2]}" "5.14 ${opts[3]}" "5.16 ${opts[4]}" "5.17 ${opts[5]}" "5.20 ${opts[6]}" "5.21 ${opts[7]}" "5.22 ${opts[8]}" 
"5.23 ${opts[9]}" "5.25 ${opts[10]}" "5.26 ${opts[11]}" "5.27 ${opts[12]}" "5.28 ${opts[13]}" "5.31 ${opts[14]}" "5.32 ${opts[15]}" 
"5.33 ${opts[16]}" "5.35 ${opts[17]}" "6.11 ${opts[18]}" "6.12 ${opts[19]}" "6.14 ${opts[20]}" "6.15 ${opts[21]}" "6.16 ${opts[22]}" 
"6.17 ${opts[23]}" "6.18 ${opts[24]}" "6.19 ${opts[25]}" "6.23 ${opts[26]}" "6.25 ${opts[27]}" "6.28 ${opts[28]}" "6.32 ${opts[29]}" 
"6.33 ${opts[30]}" "6.35 ${opts[31]}" "6.36 ${opts[32]}" "6.37 ${opts[33]}" "6.38 ${opts[34]}" "6.39 ${opts[35]}" "6.40 ${opts[36]}" 
"6.41 ${opts[37]}" "6.42 ${opts[38]}" "6.43 ${opts[39]}" "6.44 ${opts[40]}" "6.45 ${opts[41]}" "6.47 ${opts[42]}" "6.48 ${opts[43]}" 
"6.49 ${opts[44]}" "6.50 ${opts[45]}" "6.55 ${opts[46]}" "6.56 ${opts[47]}" "6.57 ${opts[48]}" "6.58 ${opts[49]}" "6.62 ${opts[50]}" 
"6.64 ${opts[51]}" "6.65 ${opts[52]}" "6.67 ${opts[53]}" "6.68 ${opts[54]}" "6.69 ${opts[55]}" "6.70 ${opts[56]}" "6.74 ${opts[57]}" 
"6.76 ${opts[58]}" "All ${opts[59]}" "Done ${opts[60]}")

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
            "5.17 ${opts[5]}")
                choice 5
                break
                ;;
            "5.20 ${opts[6]}")
                choice 6
                break
                ;;
            "5.21 ${opts[7]}")
                choice 7
                break
                ;;
            "5.22 ${opts[8]}")
                choice 8
                break
                ;;
            "5.23 ${opts[9]}")
                choice 9
                break
                ;;
            "5.25 ${opts[10]}")
                choice 10
                break
                ;;
            "5.26 ${opts[11]}")
                choice 11
                break
                ;;
            "5.27 ${opts[12]}")
                choice 12
                break
                ;;
            "5.28 ${opts[13]}")
                choice 13
                break
                ;;
            "5.31 ${opts[14]}")
                choice 14
                break
                ;;
            "5.32 ${opts[15]}")
                choice 15
                break
                ;;
            "5.33 ${opts[16]}")
                choice 16
                break
                ;;
            "5.35 ${opts[17]}")
                choice 17
                break
                ;;
            "6.11 ${opts[18]}")
                choice 18
                break
                ;;
            "6.12 ${opts[19]}")
                choice 19
                break
                ;;
            "6.14 ${opts[20]}")
                choice 20
                break
                ;; 
            "6.15 ${opts[21]}")
                choice 21
                break
                ;;  
            "6.16 ${opts[22]}")
                choice 22
                break
                ;;
            "6.17 ${opts[23]}")
                choice 23
                break
                ;;    
            "6.18 ${opts[24]}")
                choice 24
                break
                ;;   
            "6.19 ${opts[25]}")
                choice 25
                break
                ;;   
            "6.23 ${opts[26]}")
                choice 26
                break
                ;;   
            "6.25 ${opts[27]}")
                choice 27
                break
                ;;   
            "6.28 ${opts[28]}")
                choice 28
                break
                ;;   
            "6.32 ${opts[29]}")
                choice 29
                break
                ;;   
            "6.33 ${opts[30]}")
                choice 30
                break
                ;;   
            "6.35 ${opts[31]}")
                choice 31
                break
                ;;   
            "6.36 ${opts[32]}")
                choice 32
                break
                ;;   
            "6.37 ${opts[33]}")
                choice 33
                break
                ;;   
            "6.38 ${opts[34]}")
                choice 34
                break
                ;;   
            "6.39 ${opts[35]}")
                choice 35
                break
                ;;   
            "6.40 ${opts[36]}")
                choice 36
                break
                ;;   
            "6.41 ${opts[37]}")
                choice 37
                break
                ;;   
            "6.42 ${opts[38]}")
                choice 38
                break
                ;;   
            "6.43 ${opts[39]}")
                choice 39
                break
                ;;   
            "6.44 ${opts[40]}")
                choice 40
                break
                ;;   
            "6.45 ${opts[41]}")
                choice 41
                break
                ;;   
            "6.47 ${opts[42]}")
                choice 42
                break
                ;;   
            "6.48 ${opts[43]}")
                choice 43
                break
                ;;   
            "6.49 ${opts[44]}")
                choice 44
                break
                ;;   
            "6.50 ${opts[45]}")
                choice 45
                break
                ;;   
            "6.55 ${opts[46]}")
                choice 46
                break
                ;;   
            "6.56 ${opts[47]}")
                choice 47
                break
                ;;   
            "6.57 ${opts[48]}")
                choice 48
                break
                ;;   
            "6.58 ${opts[49]}")
                choice 49
                break
                ;;   
            "6.62 ${opts[50]}")
                choice 50
                break
                ;;   
            "6.64 ${opts[51]}")
                choice 51
                break
                ;;   
            "6.65 ${opts[52]}")
                choice 52
                break
                ;;   
            "6.67 ${opts[53]}")
                choice 53
                break
                ;;   
            "6.68 ${opts[54]}")
                choice 54
                break
                ;;   
            "6.69 ${opts[55]}")
                choice 55
                break
                ;;   
            "6.70 ${opts[56]}")
                choice 56
                break
                ;;   
            "6.74 ${opts[57]}")
                choice 57
                break
                ;;   
            "6.76 ${opts[58]}")
                choice 58
                break
                ;;   
            "All ${opts[59]}")
                choice 59
                break
                ;;
            "Done ${opts[60]}")
                break 2
                ;;
                *) printf '%s\n' 'Please Choose Between 1-60';;
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
            # 5) 5.17.Bison-3.4.1.sh
            5)
            if grep -q "#make test" 5.17.Bison-3.4.1.sh || grep -q "#make check" 5.17.Bison-3.4.1.sh;then
                sed -i '/make test/s/^#//g' 5.17.Bison-3.4.1.sh
                sed -i '/make check/s/^#//g' 5.17.Bison-3.4.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.17.Bison-3.4.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.17.Bison-3.4.1.sh
            fi
            ;;
            # 6) 5.20.Diffutils-3.7.sh
            6)
            if grep -q "#make test" 5.20.Diffutils-3.7.sh || grep -q "#make check" 5.20.Diffutils-3.7.sh;then
                sed -i '/make test/s/^#//g' 5.20.Diffutils-3.7.sh
                sed -i '/make check/s/^#//g' 5.20.Diffutils-3.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.20.Diffutils-3.7.sh
                sed -e '/make check/ s/^#*/#/' -i 5.20.Diffutils-3.7.sh
            fi
            ;;
            # 7) 5.21.File-5.37.sh
            7)
            if grep -q "#make test" 5.21.File-5.37.sh || grep -q "#make check" 5.21.File-5.37.sh;then
                sed -i '/make test/s/^#//g' 5.21.File-5.37.sh
                sed -i '/make check/s/^#//g' 5.21.File-5.37.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.21.File-5.37.sh
                sed -e '/make check/ s/^#*/#/' -i 5.21.File-5.37.sh
            fi
            ;;
            # 8) 5.22.Findutils-4.6.0.sh
            8)
            if grep -q "#make test" 5.22.Findutils-4.6.0.sh || grep -q "#make check" 5.22.Findutils-4.6.0.sh;then
                sed -i '/make test/s/^#//g' 5.22.Findutils-4.6.0.sh
                sed -i '/make check/s/^#//g' 5.22.Findutils-4.6.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.22.Findutils-4.6.0.sh
                sed -e '/make check/ s/^#*/#/' -i 5.22.Findutils-4.6.0.sh
            fi
            ;;
            # 9) 5.23.Gawk-5.0.1.sh
            9)
            if grep -q "#make test" 5.23.Gawk-5.0.1.sh || grep -q "#make check" 5.23.Gawk-5.0.1.sh;then
                sed -i '/make test/s/^#//g' 5.23.Gawk-5.0.1.sh
                sed -i '/make check/s/^#//g' 5.23.Gawk-5.0.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.23.Gawk-5.0.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.23.Gawk-5.0.1.sh
            fi
            ;;
            # 10) 5.25.Grep-3.3.sh
            10)
            if grep -q "#make test" 5.25.Grep-3.3.sh || grep -q "#make check" 5.25.Grep-3.3.sh;then
                sed -i '/make test/s/^#//g' 5.25.Grep-3.3.sh
                sed -i '/make check/s/^#//g' 5.25.Grep-3.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.25.Grep-3.3.sh
                sed -e '/make check/ s/^#*/#/' -i 5.25.Grep-3.3.sh
            fi
            ;;
            # 11) 5.26.Gzip-1.10.sh
            11)
            if grep -q "#make test" 5.26.Gzip-1.10.sh || grep -q "#make check" 5.26.Gzip-1.10.sh;then
                sed -i '/make test/s/^#//g' 5.26.Gzip-1.10.sh
                sed -i '/make check/s/^#//g' 5.26.Gzip-1.10.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.26.Gzip-1.10.sh
                sed -e '/make check/ s/^#*/#/' -i 5.26.Gzip-1.10.sh
            fi
            ;;
            # 12) 5.27.Make-4.2.1.sh
            12)
            if grep -q "#make test" 5.27.Make-4.2.1.sh || grep -q "#make check" 5.27.Make-4.2.1.sh;then
                sed -i '/make test/s/^#//g' 5.27.Make-4.2.1.sh
                sed -i '/make check/s/^#//g' 5.27.Make-4.2.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.27.Make-4.2.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.27.Make-4.2.1.sh
            fi
            ;;
            # 13) 5.28.Patch-2.7.6.sh
            13)
            if grep -q "#make test" 5.28.Patch-2.7.6.sh || grep -q "#make check" 5.28.Patch-2.7.6.sh;then
                sed -i '/make test/s/^#//g' 5.28.Patch-2.7.6.sh
                sed -i '/make check/s/^#//g' 5.28.Patch-2.7.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.28.Patch-2.7.6.sh
                sed -e '/make check/ s/^#*/#/' -i 5.28.Patch-2.7.6.sh
            fi
            ;;
            # 14) 5.31.Sed-4.7.sh
            14)
            if grep -q "#make test" 5.31.Sed-4.7.sh || grep -q "#make check" 5.31.Sed-4.7.sh;then
                sed -i '/make test/s/^#//g' 5.31.Sed-4.7.sh
                sed -i '/make check/s/^#//g' 5.31.Sed-4.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.31.Sed-4.7.sh
                sed -e '/make check/ s/^#*/#/' -i 5.31.Sed-4.7.sh
            fi
            ;;
            # 15) 5.32.Tar-1.32.sh
            15)
            if grep -q "#make test" 5.32.Tar-1.32.sh || grep -q "#make check" 5.32.Tar-1.32.sh;then
                sed -i '/make test/s/^#//g' 5.32.Tar-1.32.sh
                sed -i '/make check/s/^#//g' 5.32.Tar-1.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.32.Tar-1.32.sh
                sed -e '/make check/ s/^#*/#/' -i 5.32.Tar-1.32.sh
            fi
            ;;
            # 16) 5.33.Texinfo-6.6.sh
            16)
            if grep -q "#make test" 5.33.Texinfo-6.6.sh || grep -q "#make check" 5.33.Texinfo-6.6.sh;then
                sed -i '/make test/s/^#//g' 5.33.Texinfo-6.6.sh
                sed -i '/make check/s/^#//g' 5.33.Texinfo-6.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.33.Texinfo-6.6.sh
                sed -e '/make check/ s/^#*/#/' -i 5.33.Texinfo-6.6.sh
            fi
            ;;
            # 17) 5.35.Xz-5.2.4.sh
            17)
            if grep -q "#make test" 5.35.Xz-5.2.4.sh || grep -q "#make check" 5.35.Xz-5.2.4.sh;then
                sed -i '/make test/s/^#//g' 5.35.Xz-5.2.4.sh
                sed -i '/make check/s/^#//g' 5.35.Xz-5.2.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.35.Xz-5.2.4.sh
                sed -e '/make check/ s/^#*/#/' -i 5.35.Xz-5.2.4.sh
            fi
            ;;
            # 18) 6.11.Zlib-1.2.11.sh
            18)
            if grep -q "#make test" 6.11.Zlib-1.2.11.sh || grep -q "#make check" 6.11.Zlib-1.2.11.sh;then
                sed -i '/make test/s/^#//g' 6.11.Zlib-1.2.11.sh
                sed -i '/make check/s/^#//g' 6.11.Zlib-1.2.11.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.11.Zlib-1.2.11.sh
                sed -e '/make check/ s/^#*/#/' -i 6.11.Zlib-1.2.11.sh
            fi
            ;;
            # 19) 6.12.File-5.37.sh
            19)
            if grep -q "#make test" 6.12.File-5.37.sh || grep -q "#make check" 6.12.File-5.37.sh;then
                sed -i '/make test/s/^#//g' 6.12.File-5.37.sh
                sed -i '/make check/s/^#//g' 6.12.File-5.37.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.12.File-5.37.sh
                sed -e '/make check/ s/^#*/#/' -i 6.12.File-5.37.sh
            fi
            ;;
            # 20) 6.14.M4-1.4.18.sh
            20)
            if grep -q "#make test" 6.14.M4-1.4.18.sh || grep -q "#make check" 6.14.M4-1.4.18.sh;then
                sed -i '/make test/s/^#//g' 6.14.M4-1.4.18.sh
                sed -i '/make check/s/^#//g' 6.14.M4-1.4.18.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.14.M4-1.4.18.sh
                sed -e '/make check/ s/^#*/#/' -i 6.14.M4-1.4.18.sh
            fi
            ;;
            # 21) 6.15.Bc-2.1.3.sh
            21)
            if grep -q "#make test" 6.15.Bc-2.1.3.sh || grep -q "#make check" 6.15.Bc-2.1.3.sh;then
                sed -i '/make test/s/^#//g' 6.15.Bc-2.1.3.sh
                sed -i '/make check/s/^#//g' 6.15.Bc-2.1.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.15.Bc-2.1.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.15.Bc-2.1.3.sh
            fi
            ;;
            # 22) 6.16.Binutils-2.32.sh
            22)
            if grep -q "#make test" 6.16.Binutils-2.32.sh || grep -q "#make check" 6.16.Binutils-2.32.sh || grep -q "#make -k check" 6.16.Binutils-2.32.sh;then
                sed -i '/make test/s/^#//g' 6.16.Binutils-2.32.sh
                sed -i '/make check/s/^#//g' 6.16.Binutils-2.32.sh
                sed -i '/make -k check/s/^#//g' 6.16.Binutils-2.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
                sed -e '/make check/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
                sed -e '/make -k check/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
            fi
            ;;
            # 23) 6.17.GMP-6.1.2.sh
            23)
            if grep -q "#make test" 6.17.GMP-6.1.2.sh || grep -q "#make check" 6.17.GMP-6.1.2.sh;then
                sed -i '/make test/s/^#//g' 6.17.GMP-6.1.2.sh
                sed -i '/make check/s/^#//g' 6.17.GMP-6.1.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.17.GMP-6.1.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.17.GMP-6.1.2.sh
            fi
            ;;
            # 24) 6.18.MPFR-4.0.2.sh
            24)
            if grep -q "#make test" 6.18.MPFR-4.0.2.sh || grep -q "#make check" 6.18.MPFR-4.0.2.sh;then
                sed -i '/make test/s/^#//g' 6.18.MPFR-4.0.2.sh
                sed -i '/make check/s/^#//g' 6.18.MPFR-4.0.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.18.MPFR-4.0.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.18.MPFR-4.0.2.sh
            fi
            ;;
            # 25) 6.19.MPC-1.1.0.sh
            25)
            if grep -q "#make test" 6.19.MPC-1.1.0.sh || grep -q "#make check" 6.19.MPC-1.1.0.sh;then
                sed -i '/make test/s/^#//g' 6.19.MPC-1.1.0.sh
                sed -i '/make check/s/^#//g' 6.19.MPC-1.1.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.19.MPC-1.1.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.19.MPC-1.1.0.sh
            fi
            ;;
            # 26) 6.23.Pkg-config-0.29.2.sh
            26)
            if grep -q "#make test" 6.23.Pkg-config-0.29.2.sh || grep -q "#make check" 6.23.Pkg-config-0.29.2.sh;then
                sed -i '/make test/s/^#//g' 6.23.Pkg-config-0.29.2.sh
                sed -i '/make check/s/^#//g' 6.23.Pkg-config-0.29.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.23.Pkg-config-0.29.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.23.Pkg-config-0.29.2.sh
            fi
            ;;
            # 27) 6.25.Attr-2.4.48.sh
            27)
            if grep -q "#make test" 6.25.Attr-2.4.48.sh || grep -q "#make check" 6.25.Attr-2.4.48.sh;then
                sed -i '/make test/s/^#//g' 6.25.Attr-2.4.48.sh
                sed -i '/make check/s/^#//g' 6.25.Attr-2.4.48.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.25.Attr-2.4.48.sh
                sed -e '/make check/ s/^#*/#/' -i 6.25.Attr-2.4.48.sh
            fi
            ;;
            # 28) 6.28.Sed-4.7.sh
            28)
            if grep -q "#make test" 6.28.Sed-4.7.sh || grep -q "#make check" 6.28.Sed-4.7.sh;then
                sed -i '/make test/s/^#//g' 6.28.Sed-4.7.sh
                sed -i '/make check/s/^#//g' 6.28.Sed-4.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.28.Sed-4.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.28.Sed-4.7.sh
            fi
            ;;
            # 29) 6.32.Flex-2.6.4.sh
            29)
            if grep -q "#make test" 6.32.Flex-2.6.4.sh || grep -q "#make check" 6.32.Flex-2.6.4.sh;then
                sed -i '/make test/s/^#//g' 6.32.Flex-2.6.4.sh
                sed -i '/make check/s/^#//g' 6.32.Flex-2.6.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.32.Flex-2.6.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.32.Flex-2.6.4.sh
            fi
            ;;
            # 30) 6.33.Grep-3.3.sh
            30)
            if grep -q "#make test" 6.33.Grep-3.3.sh || grep -q "#make check" 6.33.Grep-3.3.sh || grep -q "#make -k check" 6.33.Grep-3.3.sh;then
                sed -i '/make test/s/^#//g' 6.33.Grep-3.3.sh
                sed -i '/make check/s/^#//g' 6.33.Grep-3.3.sh
                sed -i '/make -k check/s/^#//g' 6.33.Grep-3.3.sh
                
            else
                sed -e '/make test/ s/^#*/#/' -i 6.33.Grep-3.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.33.Grep-3.3.sh
                sed -e '/make -k check/ s/^#*/#/' -i 6.33.Grep-3.3.sh
            fi
            ;;
            # 31) 6.35.Libtool-2.4.6.sh
            31)
            if grep -q "#make test" 6.35.Libtool-2.4.6.sh || grep -q "#make check" 6.35.Libtool-2.4.6.sh;then
                sed -i '/make test/s/^#//g' 6.35.Libtool-2.4.6.sh
                sed -i '/make check/s/^#//g' 6.35.Libtool-2.4.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.35.Libtool-2.4.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.35.Libtool-2.4.6.sh
            fi
            ;;
            # 32) 6.36.GDBM-1.18.1.sh
            32)
            if grep -q "#make test" 6.36.GDBM-1.18.1.sh || grep -q "#make check" 6.36.GDBM-1.18.1.sh;then
                sed -i '/make test/s/^#//g' 6.36.GDBM-1.18.1.sh
                sed -i '/make check/s/^#//g' 6.36.GDBM-1.18.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.36.GDBM-1.18.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.36.GDBM-1.18.1.sh
            fi
            ;;
            # 33) 6.37.Gperf-3.1.sh
            33)
            if grep -q "#make test" 6.37.Gperf-3.1.sh || grep -q "#make check" 6.37.Gperf-3.1.sh || grep -q "#make -j1 check" 6.37.Gperf-3.1.sh;then
                sed -i '/make test/s/^#//g' 6.37.Gperf-3.1.sh
                sed -i '/make check/s/^#//g' 6.37.Gperf-3.1.sh
                sed -i '/make -j1 check/s/^#//g' 6.37.Gperf-3.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
                sed -e '/make -j1 check/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
            fi
            ;;
            # 34) 6.38.Expat-2.2.7.sh
            34)
            if grep -q "#make test" 6.38.Expat-2.2.7.sh || grep -q "#make check" 6.38.Expat-2.2.7.sh;then
                sed -i '/make test/s/^#//g' 6.38.Expat-2.2.7.sh
                sed -i '/make check/s/^#//g' 6.38.Expat-2.2.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.38.Expat-2.2.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.38.Expat-2.2.7.sh
            fi
            ;;
            # 35) 6.39.Inetutils-1.9.4.sh
            35)
            if grep -q "#make test" 6.39.Inetutils-1.9.4.sh || grep -q "#make check" 6.39.Inetutils-1.9.4.sh;then
                sed -i '/make test/s/^#//g' 6.39.Inetutils-1.9.4.sh
                sed -i '/make check/s/^#//g' 6.39.Inetutils-1.9.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.39.Inetutils-1.9.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.39.Inetutils-1.9.4.sh
            fi
            ;;
            # 36) 6.40.Perl-5.30.0.sh
            36)
            if grep -q "#make test" 6.40.Perl-5.30.0.sh || grep -q "#make check" 6.40.Perl-5.30.0.sh || grep -q "#make -k test" 6.40.Perl-5.30.0.sh;then
                sed -i '/make test/s/^#//g' 6.40.Perl-5.30.0.sh
                sed -i '/make check/s/^#//g' 6.40.Perl-5.30.0.sh
                sed -i '/make -k test/s/^#//g' 6.40.Perl-5.30.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
                sed -e '/make -k test/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
            fi
            ;;
            # 37) 6.41.XML-Parser-2.44.sh
            37)
            if grep -q "#make test" 6.41.XML-Parser-2.44.sh || grep -q "#make check" 6.41.XML-Parser-2.44.sh;then
                sed -i '/make test/s/^#//g' 6.41.XML-Parser-2.44.sh
                sed -i '/make check/s/^#//g' 6.41.XML-Parser-2.44.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.41.XML-Parser-2.44.sh
                sed -e '/make check/ s/^#*/#/' -i 6.41.XML-Parser-2.44.sh
            fi
            ;;
            # 38) 6.42.Intltool-0.51.0.sh
            38)
            if grep -q "#make test" 6.42.Intltool-0.51.0.sh || grep -q "#make check" 6.42.Intltool-0.51.0.sh;then
                sed -i '/make test/s/^#//g' 6.42.Intltool-0.51.0.sh
                sed -i '/make check/s/^#//g' 6.42.Intltool-0.51.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.42.Intltool-0.51.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.42.Intltool-0.51.0.sh
            fi
            ;;
            # 39) 6.43.Autoconf-2.69.sh
            39)
            if grep -q "#make test" 6.43.Autoconf-2.69.sh || grep -q "#make check" 6.43.Autoconf-2.69.sh;then
                sed -i '/make test/s/^#//g' 6.43.Autoconf-2.69.sh
                sed -i '/make check/s/^#//g' 6.43.Autoconf-2.69.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.43.Autoconf-2.69.sh
                sed -e '/make check/ s/^#*/#/' -i 6.43.Autoconf-2.69.sh
            fi
            ;;
            # 40) 6.44.Automake-1.16.1.sh
            40)
            if grep -q "#make test" 6.44.Automake-1.16.1.sh || grep -q "#make check" 6.44.Automake-1.16.1.sh || grep -q "#make -j4 check" 6.44.Automake-1.16.1.sh;then
                sed -i '/make test/s/^#//g' 6.44.Automake-1.16.1.sh
                sed -i '/make check/s/^#//g' 6.44.Automake-1.16.1.sh
                sed -i '/make -j4 check/s/^#//g' 6.44.Automake-1.16.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
                sed -e '/make -j4 check/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
            fi
            ;;
            # 41) 6.45.Xz-5.2.4.sh
            41)
            if grep -q "#make test" 6.45.Xz-5.2.4.sh || grep -q "#make check" 6.45.Xz-5.2.4.sh;then
                sed -i '/make test/s/^#//g' 6.45.Xz-5.2.4.sh
                sed -i '/make check/s/^#//g' 6.45.Xz-5.2.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.45.Xz-5.2.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.45.Xz-5.2.4.sh
            fi
            ;;
            # 42) 6.47.Gettext-0.20.1.sh
            42)
            if grep -q "#make test" 6.47.Gettext-0.20.1.sh || grep -q "#make check" 6.47.Gettext-0.20.1.sh;then
                sed -i '/make test/s/^#//g' 6.47.Gettext-0.20.1.sh
                sed -i '/make check/s/^#//g' 6.47.Gettext-0.20.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.47.Gettext-0.20.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.47.Gettext-0.20.1.sh
            fi
            ;;
            # 43) 6.48.Libelf-from-Elfutils-0.177.sh
            43)
            if grep -q "#make test" 6.48.Libelf-from-Elfutils-0.177.sh || grep -q "#make check" 6.48.Libelf-from-Elfutils-0.177.sh;then
                sed -i '/make test/s/^#//g' 6.48.Libelf-from-Elfutils-0.177.sh
                sed -i '/make check/s/^#//g' 6.48.Libelf-from-Elfutils-0.177.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.48.Libelf-from-Elfutils-0.177.sh
                sed -e '/make check/ s/^#*/#/' -i 6.48.Libelf-from-Elfutils-0.177.sh
            fi
            ;;
            # 44) 6.49.Libffi-3.2.1.sh
            44)
            if grep -q "#make test" 6.49.Libffi-3.2.1.sh || grep -q "#make check" 6.49.Libffi-3.2.1.sh;then
                sed -i '/make test/s/^#//g' 6.49.Libffi-3.2.1.sh
                sed -i '/make check/s/^#//g' 6.49.Libffi-3.2.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.49.Libffi-3.2.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.49.Libffi-3.2.1.sh
            fi
            ;;
            # 45) 6.50.OpenSSL-1.1.1c.sh
            45)
            if grep -q "#make test" 6.50.OpenSSL-1.1.1c.sh || grep -q "#make check" 6.50.OpenSSL-1.1.1c.sh;then
                sed -i '/make test/s/^#//g' 6.50.OpenSSL-1.1.1c.sh
                sed -i '/make check/s/^#//g' 6.50.OpenSSL-1.1.1c.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.50.OpenSSL-1.1.1c.sh
                sed -e '/make check/ s/^#*/#/' -i 6.50.OpenSSL-1.1.1c.sh
            fi
            ;;
            # 46) 6.55.Check-0.12.0.sh
            46)
            if grep -q "#make test" 6.55.Check-0.12.0.sh || grep -q "#make check" 6.55.Check-0.12.0.sh;then
                sed -i '/make test/s/^#//g' 6.55.Check-0.12.0.sh
                sed -i '/make check/s/^#//g' 6.55.Check-0.12.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.55.Check-0.12.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.55.Check-0.12.0.sh
            fi
            ;;
            # 47) 6.56.Diffutils-3.7.sh
            47)
            if grep -q "#make test" 6.56.Diffutils-3.7.sh || grep -q "#make check" 6.56.Diffutils-3.7.sh;then
                sed -i '/make test/s/^#//g' 6.56.Diffutils-3.7.sh
                sed -i '/make check/s/^#//g' 6.56.Diffutils-3.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.56.Diffutils-3.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.56.Diffutils-3.7.sh
            fi
            ;;
            # 48) 6.57.Gawk-5.0.1.sh
            48)
            if grep -q "#make test" 6.57.Gawk-5.0.1.sh || grep -q "#make check" 6.57.Gawk-5.0.1.sh;then
                sed -i '/make test/s/^#//g' 6.57.Gawk-5.0.1.sh
                sed -i '/make check/s/^#//g' 6.57.Gawk-5.0.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.57.Gawk-5.0.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.57.Gawk-5.0.1.sh
            fi
            ;;
            # 49) 6.58.Findutils-4.6.0.sh
            49)
            if grep -q "#make test" 6.58.Findutils-4.6.0.sh || grep -q "#make check" 6.58.Findutils-4.6.0.sh;then
                sed -i '/make test/s/^#//g' 6.58.Findutils-4.6.0.sh
                sed -i '/make check/s/^#//g' 6.58.Findutils-4.6.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.58.Findutils-4.6.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.58.Findutils-4.6.0.sh
            fi
            ;;
            # 50) 6.62.Gzip-1.10.sh
            50)
            if grep -q "#make test" 6.62.Gzip-1.10.sh || grep -q "#make check" 6.62.Gzip-1.10.sh;then
                sed -i '/make test/s/^#//g' 6.62.Gzip-1.10.sh
                sed -i '/make check/s/^#//g' 6.62.Gzip-1.10.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.62.Gzip-1.10.sh
                sed -e '/make check/ s/^#*/#/' -i 6.62.Gzip-1.10.sh
            fi
            ;;
            # 51) 6.64.Kbd-2.2.0.sh
            51)
            if grep -q "#make test" 6.64.Kbd-2.2.0.sh || grep -q "#make check" 6.64.Kbd-2.2.0.sh;then
                sed -i '/make test/s/^#//g' 6.64.Kbd-2.2.0.sh
                sed -i '/make check/s/^#//g' 6.64.Kbd-2.2.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.64.Kbd-2.2.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.64.Kbd-2.2.0.sh
            fi
            ;;
            # 52) 6.65.Libpipeline-1.5.1.sh
            52)
            if grep -q "#make test" 6.65.Libpipeline-1.5.1.sh || grep -q "#make check" 6.65.Libpipeline-1.5.1.sh;then
                sed -i '/make test/s/^#//g' 6.65.Libpipeline-1.5.1.sh
                sed -i '/make check/s/^#//g' 6.65.Libpipeline-1.5.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.65.Libpipeline-1.5.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.65.Libpipeline-1.5.1.sh
            fi
            ;;
            # 53) 6.67.Patch-2.7.6.sh
            53)
            if grep -q "#make test" 6.67.Patch-2.7.6.sh || grep -q "#make check" 6.67.Patch-2.7.6.sh;then
                sed -i '/make test/s/^#//g' 6.67.Patch-2.7.6.sh
                sed -i '/make check/s/^#//g' 6.67.Patch-2.7.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.67.Patch-2.7.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.67.Patch-2.7.6.sh
            fi
            ;;
            # 54) 6.68.Man-DB-2.8.6.1.sh
            54)
            if grep -q "#make test" 6.68.Man-DB-2.8.6.1.sh || grep -q "#make check" 6.68.Man-DB-2.8.6.1.sh;then
                sed -i '/make test/s/^#//g' 6.68.Man-DB-2.8.6.1.sh
                sed -i '/make check/s/^#//g' 6.68.Man-DB-2.8.6.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.68.Man-DB-2.8.6.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.68.Man-DB-2.8.6.1.sh
            fi
            ;;
            # 55) 6.69.Tar-1.32.sh
            55)
            if grep -q "#make test" 6.69.Tar-1.32.sh || grep -q "#make check" 6.69.Tar-1.32.sh;then
                sed -i '/make test/s/^#//g' 6.69.Tar-1.32.sh
                sed -i '/make check/s/^#//g' 6.69.Tar-1.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.69.Tar-1.32.sh
                sed -e '/make check/ s/^#*/#/' -i 6.69.Tar-1.32.sh
            fi
            ;;
            # 56) 6.70.Texinfo-6.6.sh
            56)
            if grep -q "#make test" 6.70.Texinfo-6.6.sh || grep -q "#make check" 6.70.Texinfo-6.6.sh;then
                sed -i '/make test/s/^#//g' 6.70.Texinfo-6.6.sh
                sed -i '/make check/s/^#//g' 6.70.Texinfo-6.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.70.Texinfo-6.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.70.Texinfo-6.6.sh
            fi
            ;;
            # 57) 6.74.Procps-ng-3.3.15.sh
            57)
            if grep -q "#make test" 6.74.Procps-ng-3.3.15.sh || grep -q "#make check" 6.74.Procps-ng-3.3.15.sh;then
                sed -i '/make test/s/^#//g' 6.74.Procps-ng-3.3.15.sh
                sed -i '/make check/s/^#//g' 6.74.Procps-ng-3.3.15.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.74.Procps-ng-3.3.15.sh
                sed -e '/make check/ s/^#*/#/' -i 6.74.Procps-ng-3.3.15.sh
            fi
            ;;
            # 58) 6.76.E2fsprogs-1.45.3.sh
            58)
            if grep -q "#make test" 6.76.E2fsprogs-1.45.3.sh || grep -q "#make check" 6.76.E2fsprogs-1.45.3.sh;then
                sed -i '/make test/s/^#//g' 6.76.E2fsprogs-1.45.3.sh
                sed -i '/make check/s/^#//g' 6.76.E2fsprogs-1.45.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.76.E2fsprogs-1.45.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.76.E2fsprogs-1.45.3.sh
            fi
            ;;

#######################################################################################################################################################            
#######################################################################################################################################################
#######################################################################################################################################################
#######################################################################################################################################################
#######################################################################################################################################################

            # 59) All
            59)
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
            # 5) 5.17.Bison-3.4.1.sh
            if grep -q "#make test" 5.17.Bison-3.4.1.sh || grep -q "#make check" 5.17.Bison-3.4.1.sh;then
                sed -i '/make test/s/^#//g' 5.17.Bison-3.4.1.sh
                sed -i '/make check/s/^#//g' 5.17.Bison-3.4.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.17.Bison-3.4.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.17.Bison-3.4.1.sh
            fi
            # 6) 5.20.Diffutils-3.7.sh
            if grep -q "#make test" 5.20.Diffutils-3.7.sh || grep -q "#make check" 5.20.Diffutils-3.7.sh;then
                sed -i '/make test/s/^#//g' 5.20.Diffutils-3.7.sh
                sed -i '/make check/s/^#//g' 5.20.Diffutils-3.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.20.Diffutils-3.7.sh
                sed -e '/make check/ s/^#*/#/' -i 5.20.Diffutils-3.7.sh
            fi
            # 7) 5.21.File-5.37.sh
            if grep -q "#make test" 5.21.File-5.37.sh || grep -q "#make check" 5.21.File-5.37.sh;then
                sed -i '/make test/s/^#//g' 5.21.File-5.37.sh
                sed -i '/make check/s/^#//g' 5.21.File-5.37.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.21.File-5.37.sh
                sed -e '/make check/ s/^#*/#/' -i 5.21.File-5.37.sh
            fi
            # 8) 5.22.Findutils-4.6.0.sh
            if grep -q "#make test" 5.22.Findutils-4.6.0.sh || grep -q "#make check" 5.22.Findutils-4.6.0.sh;then
                sed -i '/make test/s/^#//g' 5.22.Findutils-4.6.0.sh
                sed -i '/make check/s/^#//g' 5.22.Findutils-4.6.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.22.Findutils-4.6.0.sh
                sed -e '/make check/ s/^#*/#/' -i 5.22.Findutils-4.6.0.sh
            fi
            # 9) 5.23.Gawk-5.0.1.sh
            if grep -q "#make test" 5.23.Gawk-5.0.1.sh || grep -q "#make check" 5.23.Gawk-5.0.1.sh;then
                sed -i '/make test/s/^#//g' 5.23.Gawk-5.0.1.sh
                sed -i '/make check/s/^#//g' 5.23.Gawk-5.0.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.23.Gawk-5.0.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.23.Gawk-5.0.1.sh
            fi
            # 10) 5.25.Grep-3.3.sh
            if grep -q "#make test" 5.25.Grep-3.3.sh || grep -q "#make check" 5.25.Grep-3.3.sh;then
                sed -i '/make test/s/^#//g' 5.25.Grep-3.3.sh
                sed -i '/make check/s/^#//g' 5.25.Grep-3.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.25.Grep-3.3.sh
                sed -e '/make check/ s/^#*/#/' -i 5.25.Grep-3.3.sh
            fi
            # 11) 5.26.Gzip-1.10.sh
            if grep -q "#make test" 5.26.Gzip-1.10.sh || grep -q "#make check" 5.26.Gzip-1.10.sh;then
                sed -i '/make test/s/^#//g' 5.26.Gzip-1.10.sh
                sed -i '/make check/s/^#//g' 5.26.Gzip-1.10.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.26.Gzip-1.10.sh
                sed -e '/make check/ s/^#*/#/' -i 5.26.Gzip-1.10.sh
            fi
            # 12) 5.27.Make-4.2.1.sh
            if grep -q "#make test" 5.27.Make-4.2.1.sh || grep -q "#make check" 5.27.Make-4.2.1.sh;then
                sed -i '/make test/s/^#//g' 5.27.Make-4.2.1.sh
                sed -i '/make check/s/^#//g' 5.27.Make-4.2.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.27.Make-4.2.1.sh
                sed -e '/make check/ s/^#*/#/' -i 5.27.Make-4.2.1.sh
            fi
            # 13) 5.28.Patch-2.7.6.sh
            if grep -q "#make test" 5.28.Patch-2.7.6.sh || grep -q "#make check" 5.28.Patch-2.7.6.sh;then
                sed -i '/make test/s/^#//g' 5.28.Patch-2.7.6.sh
                sed -i '/make check/s/^#//g' 5.28.Patch-2.7.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.28.Patch-2.7.6.sh
                sed -e '/make check/ s/^#*/#/' -i 5.28.Patch-2.7.6.sh
            fi
            # 14) 5.31.Sed-4.7.sh
            if grep -q "#make test" 5.31.Sed-4.7.sh || grep -q "#make check" 5.31.Sed-4.7.sh;then
                sed -i '/make test/s/^#//g' 5.31.Sed-4.7.sh
                sed -i '/make check/s/^#//g' 5.31.Sed-4.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.31.Sed-4.7.sh
                sed -e '/make check/ s/^#*/#/' -i 5.31.Sed-4.7.sh
            fi
            # 15) 5.32.Tar-1.32.sh
            if grep -q "#make test" 5.32.Tar-1.32.sh || grep -q "#make check" 5.32.Tar-1.32.sh;then
                sed -i '/make test/s/^#//g' 5.32.Tar-1.32.sh
                sed -i '/make check/s/^#//g' 5.32.Tar-1.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.32.Tar-1.32.sh
                sed -e '/make check/ s/^#*/#/' -i 5.32.Tar-1.32.sh
            fi
            # 16) 5.33.Texinfo-6.6.sh
            if grep -q "#make test" 5.33.Texinfo-6.6.sh || grep -q "#make check" 5.33.Texinfo-6.6.sh;then
                sed -i '/make test/s/^#//g' 5.33.Texinfo-6.6.sh
                sed -i '/make check/s/^#//g' 5.33.Texinfo-6.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.33.Texinfo-6.6.sh
                sed -e '/make check/ s/^#*/#/' -i 5.33.Texinfo-6.6.sh
            fi
            # 17) 5.35.Xz-5.2.4.sh
            if grep -q "#make test" 5.35.Xz-5.2.4.sh || grep -q "#make check" 5.35.Xz-5.2.4.sh;then
                sed -i '/make test/s/^#//g' 5.35.Xz-5.2.4.sh
                sed -i '/make check/s/^#//g' 5.35.Xz-5.2.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 5.35.Xz-5.2.4.sh
                sed -e '/make check/ s/^#*/#/' -i 5.35.Xz-5.2.4.sh
            fi
            # 18) 6.11.Zlib-1.2.11.sh
            if grep -q "#make test" 6.11.Zlib-1.2.11.sh || grep -q "#make check" 6.11.Zlib-1.2.11.sh;then
                sed -i '/make test/s/^#//g' 6.11.Zlib-1.2.11.sh
                sed -i '/make check/s/^#//g' 6.11.Zlib-1.2.11.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.11.Zlib-1.2.11.sh
                sed -e '/make check/ s/^#*/#/' -i 6.11.Zlib-1.2.11.sh
            fi
            # 19) 6.12.File-5.37.sh
            if grep -q "#make test" 6.12.File-5.37.sh || grep -q "#make check" 6.12.File-5.37.sh;then
                sed -i '/make test/s/^#//g' 6.12.File-5.37.sh
                sed -i '/make check/s/^#//g' 6.12.File-5.37.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.12.File-5.37.sh
                sed -e '/make check/ s/^#*/#/' -i 6.12.File-5.37.sh
            fi
            # 20) 6.14.M4-1.4.18.sh
            if grep -q "#make test" 6.14.M4-1.4.18.sh || grep -q "#make check" 6.14.M4-1.4.18.sh;then
                sed -i '/make test/s/^#//g' 6.14.M4-1.4.18.sh
                sed -i '/make check/s/^#//g' 6.14.M4-1.4.18.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.14.M4-1.4.18.sh
                sed -e '/make check/ s/^#*/#/' -i 6.14.M4-1.4.18.sh
            fi
            # 21) 6.15.Bc-2.1.3.sh
            if grep -q "#make test" 6.15.Bc-2.1.3.sh || grep -q "#make check" 6.15.Bc-2.1.3.sh;then
                sed -i '/make test/s/^#//g' 6.15.Bc-2.1.3.sh
                sed -i '/make check/s/^#//g' 6.15.Bc-2.1.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.15.Bc-2.1.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.15.Bc-2.1.3.sh
            fi
            # 22) 6.16.Binutils-2.32.sh
            if grep -q "#make test" 6.16.Binutils-2.32.sh || grep -q "#make check" 6.16.Binutils-2.32.sh || grep -q "#make -k check" 6.16.Binutils-2.32.sh;then
                sed -i '/make test/s/^#//g' 6.16.Binutils-2.32.sh
                sed -i '/make check/s/^#//g' 6.16.Binutils-2.32.sh
                sed -i '/make -k check/s/^#//g' 6.16.Binutils-2.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
                sed -e '/make check/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
                sed -e '/make -k check/ s/^#*/#/' -i 6.16.Binutils-2.32.sh
            fi
            # 23) 6.17.GMP-6.1.2.sh
            if grep -q "#make test" 6.17.GMP-6.1.2.sh || grep -q "#make check" 6.17.GMP-6.1.2.sh;then
                sed -i '/make test/s/^#//g' 6.17.GMP-6.1.2.sh
                sed -i '/make check/s/^#//g' 6.17.GMP-6.1.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.17.GMP-6.1.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.17.GMP-6.1.2.sh
            fi
            # 24) 6.18.MPFR-4.0.2.sh
            if grep -q "#make test" 6.18.MPFR-4.0.2.sh || grep -q "#make check" 6.18.MPFR-4.0.2.sh;then
                sed -i '/make test/s/^#//g' 6.18.MPFR-4.0.2.sh
                sed -i '/make check/s/^#//g' 6.18.MPFR-4.0.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.18.MPFR-4.0.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.18.MPFR-4.0.2.sh
            fi
            # 25) 6.19.MPC-1.1.0.sh
            if grep -q "#make test" 6.19.MPC-1.1.0.sh || grep -q "#make check" 6.19.MPC-1.1.0.sh;then
                sed -i '/make test/s/^#//g' 6.19.MPC-1.1.0.sh
                sed -i '/make check/s/^#//g' 6.19.MPC-1.1.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.19.MPC-1.1.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.19.MPC-1.1.0.sh
            fi
            # 26) 6.23.Pkg-config-0.29.2.sh
            if grep -q "#make test" 6.23.Pkg-config-0.29.2.sh || grep -q "#make check" 6.23.Pkg-config-0.29.2.sh;then
                sed -i '/make test/s/^#//g' 6.23.Pkg-config-0.29.2.sh
                sed -i '/make check/s/^#//g' 6.23.Pkg-config-0.29.2.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.23.Pkg-config-0.29.2.sh
                sed -e '/make check/ s/^#*/#/' -i 6.23.Pkg-config-0.29.2.sh
            fi
            # 27) 6.25.Attr-2.4.48.sh
            if grep -q "#make test" 6.25.Attr-2.4.48.sh || grep -q "#make check" 6.25.Attr-2.4.48.sh;then
                sed -i '/make test/s/^#//g' 6.25.Attr-2.4.48.sh
                sed -i '/make check/s/^#//g' 6.25.Attr-2.4.48.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.25.Attr-2.4.48.sh
                sed -e '/make check/ s/^#*/#/' -i 6.25.Attr-2.4.48.sh
            fi
            # 28) 6.28.Sed-4.7.sh
            if grep -q "#make test" 6.28.Sed-4.7.sh || grep -q "#make check" 6.28.Sed-4.7.sh;then
                sed -i '/make test/s/^#//g' 6.28.Sed-4.7.sh
                sed -i '/make check/s/^#//g' 6.28.Sed-4.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.28.Sed-4.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.28.Sed-4.7.sh
            fi
            # 29) 6.32.Flex-2.6.4.sh
            if grep -q "#make test" 6.32.Flex-2.6.4.sh || grep -q "#make check" 6.32.Flex-2.6.4.sh;then
                sed -i '/make test/s/^#//g' 6.32.Flex-2.6.4.sh
                sed -i '/make check/s/^#//g' 6.32.Flex-2.6.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.32.Flex-2.6.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.32.Flex-2.6.4.sh
            fi
            # 30) 6.33.Grep-3.3.sh
            if grep -q "#make test" 6.33.Grep-3.3.sh || grep -q "#make check" 6.33.Grep-3.3.sh || grep -q "#make -k check" 6.33.Grep-3.3.sh;then
                sed -i '/make test/s/^#//g' 6.33.Grep-3.3.sh
                sed -i '/make check/s/^#//g' 6.33.Grep-3.3.sh
                sed -i '/make -k check/s/^#//g' 6.33.Grep-3.3.sh
                
            else
                sed -e '/make test/ s/^#*/#/' -i 6.33.Grep-3.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.33.Grep-3.3.sh
                sed -e '/make -k check/ s/^#*/#/' -i 6.33.Grep-3.3.sh
            fi
            # 31) 6.35.Libtool-2.4.6.sh
            if grep -q "#make test" 6.35.Libtool-2.4.6.sh || grep -q "#make check" 6.35.Libtool-2.4.6.sh;then
                sed -i '/make test/s/^#//g' 6.35.Libtool-2.4.6.sh
                sed -i '/make check/s/^#//g' 6.35.Libtool-2.4.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.35.Libtool-2.4.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.35.Libtool-2.4.6.sh
            fi
            # 32) 6.36.GDBM-1.18.1.sh
            if grep -q "#make test" 6.36.GDBM-1.18.1.sh || grep -q "#make check" 6.36.GDBM-1.18.1.sh;then
                sed -i '/make test/s/^#//g' 6.36.GDBM-1.18.1.sh
                sed -i '/make check/s/^#//g' 6.36.GDBM-1.18.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.36.GDBM-1.18.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.36.GDBM-1.18.1.sh
            fi
            # 33) 6.37.Gperf-3.1.sh
            if grep -q "#make test" 6.37.Gperf-3.1.sh || grep -q "#make check" 6.37.Gperf-3.1.sh || grep -q "#make -j1 check" 6.37.Gperf-3.1.sh;then
                sed -i '/make test/s/^#//g' 6.37.Gperf-3.1.sh
                sed -i '/make check/s/^#//g' 6.37.Gperf-3.1.sh
                sed -i '/make -j1 check/s/^#//g' 6.37.Gperf-3.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
                sed -e '/make -j1 check/ s/^#*/#/' -i 6.37.Gperf-3.1.sh
            fi
            # 34) 6.38.Expat-2.2.7.sh
            if grep -q "#make test" 6.38.Expat-2.2.7.sh || grep -q "#make check" 6.38.Expat-2.2.7.sh;then
                sed -i '/make test/s/^#//g' 6.38.Expat-2.2.7.sh
                sed -i '/make check/s/^#//g' 6.38.Expat-2.2.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.38.Expat-2.2.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.38.Expat-2.2.7.sh
            fi
            # 35) 6.39.Inetutils-1.9.4.sh
            if grep -q "#make test" 6.39.Inetutils-1.9.4.sh || grep -q "#make check" 6.39.Inetutils-1.9.4.sh;then
                sed -i '/make test/s/^#//g' 6.39.Inetutils-1.9.4.sh
                sed -i '/make check/s/^#//g' 6.39.Inetutils-1.9.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.39.Inetutils-1.9.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.39.Inetutils-1.9.4.sh
            fi
            # 36) 6.40.Perl-5.30.0.sh
            if grep -q "#make test" 6.40.Perl-5.30.0.sh || grep -q "#make check" 6.40.Perl-5.30.0.sh || grep -q "#make -k test" 6.40.Perl-5.30.0.sh;then
                sed -i '/make test/s/^#//g' 6.40.Perl-5.30.0.sh
                sed -i '/make check/s/^#//g' 6.40.Perl-5.30.0.sh
                sed -i '/make -k test/s/^#//g' 6.40.Perl-5.30.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
                sed -e '/make -k test/ s/^#*/#/' -i 6.40.Perl-5.30.0.sh
            fi
            # 37) 6.41.XML-Parser-2.44.sh
            if grep -q "#make test" 6.41.XML-Parser-2.44.sh || grep -q "#make check" 6.41.XML-Parser-2.44.sh;then
                sed -i '/make test/s/^#//g' 6.41.XML-Parser-2.44.sh
                sed -i '/make check/s/^#//g' 6.41.XML-Parser-2.44.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.41.XML-Parser-2.44.sh
                sed -e '/make check/ s/^#*/#/' -i 6.41.XML-Parser-2.44.sh
            fi
            # 38) 6.42.Intltool-0.51.0.sh
            if grep -q "#make test" 6.42.Intltool-0.51.0.sh || grep -q "#make check" 6.42.Intltool-0.51.0.sh;then
                sed -i '/make test/s/^#//g' 6.42.Intltool-0.51.0.sh
                sed -i '/make check/s/^#//g' 6.42.Intltool-0.51.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.42.Intltool-0.51.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.42.Intltool-0.51.0.sh
            fi
            # 39) 6.43.Autoconf-2.69.sh
            if grep -q "#make test" 6.43.Autoconf-2.69.sh || grep -q "#make check" 6.43.Autoconf-2.69.sh;then
                sed -i '/make test/s/^#//g' 6.43.Autoconf-2.69.sh
                sed -i '/make check/s/^#//g' 6.43.Autoconf-2.69.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.43.Autoconf-2.69.sh
                sed -e '/make check/ s/^#*/#/' -i 6.43.Autoconf-2.69.sh
            fi
            # 40) 6.44.Automake-1.16.1.sh
            if grep -q "#make test" 6.44.Automake-1.16.1.sh || grep -q "#make check" 6.44.Automake-1.16.1.sh || grep -q "#make -j4 check" 6.44.Automake-1.16.1.sh;then
                sed -i '/make test/s/^#//g' 6.44.Automake-1.16.1.sh
                sed -i '/make check/s/^#//g' 6.44.Automake-1.16.1.sh
                sed -i '/make -j4 check/s/^#//g' 6.44.Automake-1.16.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
                sed -e '/make -j4 check/ s/^#*/#/' -i 6.44.Automake-1.16.1.sh
            fi
            # 41) 6.45.Xz-5.2.4.sh
            if grep -q "#make test" 6.45.Xz-5.2.4.sh || grep -q "#make check" 6.45.Xz-5.2.4.sh;then
                sed -i '/make test/s/^#//g' 6.45.Xz-5.2.4.sh
                sed -i '/make check/s/^#//g' 6.45.Xz-5.2.4.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.45.Xz-5.2.4.sh
                sed -e '/make check/ s/^#*/#/' -i 6.45.Xz-5.2.4.sh
            fi
            # 42) 6.47.Gettext-0.20.1.sh
            if grep -q "#make test" 6.47.Gettext-0.20.1.sh || grep -q "#make check" 6.47.Gettext-0.20.1.sh;then
                sed -i '/make test/s/^#//g' 6.47.Gettext-0.20.1.sh
                sed -i '/make check/s/^#//g' 6.47.Gettext-0.20.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.47.Gettext-0.20.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.47.Gettext-0.20.1.sh
            fi
            # 43) 6.48.Libelf-from-Elfutils-0.177.sh
            if grep -q "#make test" 6.48.Libelf-from-Elfutils-0.177.sh || grep -q "#make check" 6.48.Libelf-from-Elfutils-0.177.sh;then
                sed -i '/make test/s/^#//g' 6.48.Libelf-from-Elfutils-0.177.sh
                sed -i '/make check/s/^#//g' 6.48.Libelf-from-Elfutils-0.177.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.48.Libelf-from-Elfutils-0.177.sh
                sed -e '/make check/ s/^#*/#/' -i 6.48.Libelf-from-Elfutils-0.177.sh
            fi
            # 44) 6.49.Libffi-3.2.1.sh
            if grep -q "#make test" 6.49.Libffi-3.2.1.sh || grep -q "#make check" 6.49.Libffi-3.2.1.sh;then
                sed -i '/make test/s/^#//g' 6.49.Libffi-3.2.1.sh
                sed -i '/make check/s/^#//g' 6.49.Libffi-3.2.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.49.Libffi-3.2.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.49.Libffi-3.2.1.sh
            fi
            # 45) 6.50.OpenSSL-1.1.1c.sh
            if grep -q "#make test" 6.50.OpenSSL-1.1.1c.sh || grep -q "#make check" 6.50.OpenSSL-1.1.1c.sh;then
                sed -i '/make test/s/^#//g' 6.50.OpenSSL-1.1.1c.sh
                sed -i '/make check/s/^#//g' 6.50.OpenSSL-1.1.1c.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.50.OpenSSL-1.1.1c.sh
                sed -e '/make check/ s/^#*/#/' -i 6.50.OpenSSL-1.1.1c.sh
            fi
            # 46) 6.55.Check-0.12.0.sh
            if grep -q "#make test" 6.55.Check-0.12.0.sh || grep -q "#make check" 6.55.Check-0.12.0.sh;then
                sed -i '/make test/s/^#//g' 6.55.Check-0.12.0.sh
                sed -i '/make check/s/^#//g' 6.55.Check-0.12.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.55.Check-0.12.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.55.Check-0.12.0.sh
            fi
            # 47) 6.56.Diffutils-3.7.sh
            if grep -q "#make test" 6.56.Diffutils-3.7.sh || grep -q "#make check" 6.56.Diffutils-3.7.sh;then
                sed -i '/make test/s/^#//g' 6.56.Diffutils-3.7.sh
                sed -i '/make check/s/^#//g' 6.56.Diffutils-3.7.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.56.Diffutils-3.7.sh
                sed -e '/make check/ s/^#*/#/' -i 6.56.Diffutils-3.7.sh
            fi
            # 48) 6.57.Gawk-5.0.1.sh
            if grep -q "#make test" 6.57.Gawk-5.0.1.sh || grep -q "#make check" 6.57.Gawk-5.0.1.sh;then
                sed -i '/make test/s/^#//g' 6.57.Gawk-5.0.1.sh
                sed -i '/make check/s/^#//g' 6.57.Gawk-5.0.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.57.Gawk-5.0.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.57.Gawk-5.0.1.sh
            fi
            # 49) 6.58.Findutils-4.6.0.sh
            if grep -q "#make test" 6.58.Findutils-4.6.0.sh || grep -q "#make check" 6.58.Findutils-4.6.0.sh;then
                sed -i '/make test/s/^#//g' 6.58.Findutils-4.6.0.sh
                sed -i '/make check/s/^#//g' 6.58.Findutils-4.6.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.58.Findutils-4.6.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.58.Findutils-4.6.0.sh
            fi
            # 50) 6.62.Gzip-1.10.sh
            if grep -q "#make test" 6.62.Gzip-1.10.sh || grep -q "#make check" 6.62.Gzip-1.10.sh;then
                sed -i '/make test/s/^#//g' 6.62.Gzip-1.10.sh
                sed -i '/make check/s/^#//g' 6.62.Gzip-1.10.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.62.Gzip-1.10.sh
                sed -e '/make check/ s/^#*/#/' -i 6.62.Gzip-1.10.sh
            fi
            # 51) 6.64.Kbd-2.2.0.sh
            if grep -q "#make test" 6.64.Kbd-2.2.0.sh || grep -q "#make check" 6.64.Kbd-2.2.0.sh;then
                sed -i '/make test/s/^#//g' 6.64.Kbd-2.2.0.sh
                sed -i '/make check/s/^#//g' 6.64.Kbd-2.2.0.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.64.Kbd-2.2.0.sh
                sed -e '/make check/ s/^#*/#/' -i 6.64.Kbd-2.2.0.sh
            fi
            # 52) 6.65.Libpipeline-1.5.1.sh
            if grep -q "#make test" 6.65.Libpipeline-1.5.1.sh || grep -q "#make check" 6.65.Libpipeline-1.5.1.sh;then
                sed -i '/make test/s/^#//g' 6.65.Libpipeline-1.5.1.sh
                sed -i '/make check/s/^#//g' 6.65.Libpipeline-1.5.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.65.Libpipeline-1.5.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.65.Libpipeline-1.5.1.sh
            fi
            # 53) 6.67.Patch-2.7.6.sh
            if grep -q "#make test" 6.67.Patch-2.7.6.sh || grep -q "#make check" 6.67.Patch-2.7.6.sh;then
                sed -i '/make test/s/^#//g' 6.67.Patch-2.7.6.sh
                sed -i '/make check/s/^#//g' 6.67.Patch-2.7.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.67.Patch-2.7.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.67.Patch-2.7.6.sh
            fi
            # 54) 6.68.Man-DB-2.8.6.1.sh
            if grep -q "#make test" 6.68.Man-DB-2.8.6.1.sh || grep -q "#make check" 6.68.Man-DB-2.8.6.1.sh;then
                sed -i '/make test/s/^#//g' 6.68.Man-DB-2.8.6.1.sh
                sed -i '/make check/s/^#//g' 6.68.Man-DB-2.8.6.1.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.68.Man-DB-2.8.6.1.sh
                sed -e '/make check/ s/^#*/#/' -i 6.68.Man-DB-2.8.6.1.sh
            fi
            # 55) 6.69.Tar-1.32.sh
            if grep -q "#make test" 6.69.Tar-1.32.sh || grep -q "#make check" 6.69.Tar-1.32.sh;then
                sed -i '/make test/s/^#//g' 6.69.Tar-1.32.sh
                sed -i '/make check/s/^#//g' 6.69.Tar-1.32.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.69.Tar-1.32.sh
                sed -e '/make check/ s/^#*/#/' -i 6.69.Tar-1.32.sh
            fi
            # 56) 6.70.Texinfo-6.6.sh
            if grep -q "#make test" 6.70.Texinfo-6.6.sh || grep -q "#make check" 6.70.Texinfo-6.6.sh;then
                sed -i '/make test/s/^#//g' 6.70.Texinfo-6.6.sh
                sed -i '/make check/s/^#//g' 6.70.Texinfo-6.6.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.70.Texinfo-6.6.sh
                sed -e '/make check/ s/^#*/#/' -i 6.70.Texinfo-6.6.sh
            fi
            # 57) 6.74.Procps-ng-3.3.15.sh
            if grep -q "#make test" 6.74.Procps-ng-3.3.15.sh || grep -q "#make check" 6.74.Procps-ng-3.3.15.sh;then
                sed -i '/make test/s/^#//g' 6.74.Procps-ng-3.3.15.sh
                sed -i '/make check/s/^#//g' 6.74.Procps-ng-3.3.15.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.74.Procps-ng-3.3.15.sh
                sed -e '/make check/ s/^#*/#/' -i 6.74.Procps-ng-3.3.15.sh
            fi
            # 58) 6.76.E2fsprogs-1.45.3.sh
            if grep -q "#make test" 6.76.E2fsprogs-1.45.3.sh || grep -q "#make check" 6.76.E2fsprogs-1.45.3.sh;then
                sed -i '/make test/s/^#//g' 6.76.E2fsprogs-1.45.3.sh
                sed -i '/make check/s/^#//g' 6.76.E2fsprogs-1.45.3.sh
            else
                sed -e '/make test/ s/^#*/#/' -i 6.76.E2fsprogs-1.45.3.sh
                sed -e '/make check/ s/^#*/#/' -i 6.76.E2fsprogs-1.45.3.sh
            fi
            ;;
        esac
    fi
done