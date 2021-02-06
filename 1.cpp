#include <iostream>
 using namespace std;
main(){
int golongan,tistri,pajak,gkotor,gsementara,pensiun,bpjs;
int jumlah_anak, gaji_pokok, tjg_klg, total_gaji,tunjangan,jk,status;


cout<<" Program Menghitung Gaji"<<endl;
cout<<"[1] Golongan 1 = gaji pokok=1500000 tunjangan=200000 "<<endl;
cout<<"[2] Golongan 1 = gaji pokok=2000000 tunjangan=400000 "<<endl;
cout<<"[3] Golongan 1 = gaji pokok=3000000 tunjangan=600000 "<<endl;
cout<<"[4] Golongan 1 = gaji pokok=4000000 tunjangan=1000000 "<<endl;
cout<<" Masukkan golongan karyawan :";cin>>golongan;
cout<<"[0 = Laki-laki, 1 = Perempuan] "; cin>>jk;
cout<<"Masukkan jml anak :" ;cin>>jumlah_anak;

switch(golongan){
case 1:
 gaji_pokok = 1500000;
 tunjangan = 200000;
   break;
case 2:
 gaji_pokok = 2000000;
 tunjangan = 400000;
break;
case 3:
 gaji_pokok = 3000000;
 tunjangan = 600000;
break;
case 4:
 gaji_pokok = 4000000;
 tunjangan = 1000000;
break;
   }

//tunjangan
if(jk==0 )
 {
   tistri=200000;
 }
   else if (jk==1)
   {
   tistri=0;
   }

if(jumlah_anak <= 2) {
tjg_klg = 100000 ;
}
else{
    tjg_klg = 0;
   }
gkotor = gaji_pokok + tunjangan + tjg_klg + tistri;

//pajak
pajak=(0.10*gkotor);

// gaji sementara
gsementara=gkotor-pajak;

pensiun=200000;
bpjs=150000;

total_gaji=gsementara-pensiun-bpjs;

cout<<"====================="<<endl;
cout<<"GAJI DAN TUNJANGAN"<<endl;
cout<<"====================="<<endl;
cout<<"Gaji Pokok:"<<gaji_pokok<<endl;
cout<<"Tunjangan:"<<tunjangan<<endl;
cout<<"Tunjangan Istri:"<<tistri<<endl;
cout<<"Tunjangan Anak:"<<tjg_klg<<endl;
cout<<"Total:"<<gkotor<<endl;
cout<<"Pajak 10%:"<<pajak<<endl;
cout<<"Gaji Sementara:"<<gsementara<<endl;
cout<<"====================="<<endl;
cout<<"GAJI BERSIH"<<endl;
cout<<"====================="<<endl;
cout<<"Potongan Pensiun:"<<pensiun<<endl;
cout<<"Potongan BPJS:"<<bpjs<<endl;
cout<<"Gaji Bersih:"<<total_gaji<<endl;
return 0;
}
