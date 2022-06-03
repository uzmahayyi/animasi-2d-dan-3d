//inisialisasi posisi-x
int nilaiX = 40;
//inisialisasi posisi-y
int nilaiY = 40;
//inisialisasi arah-x
int arahX = 3;
//inisialisasi arah-y
int arahY = 3;                   

void setup()
{
  size(1000, 1000);  // ukuran layar
}
 //dbfweb.blogspot.com
void draw ()
{
  background(0);//warna latar belakang
  fill(#FFC0CB);// warna bola
  noStroke();
  ellipse(nilaiX, nilaiY, 40, 40);// gambar lingkaran
  nilaiX = nilaiX + arahX;    // update posisi baru-x
  if (nilaiX>width-20 || nilaiX<20)  // cek jika bola membentur dinding kanan-kiri
  {
 
    arahX = arahX*-1; // jika membentur tembok, balikkan arah x
  }
  nilaiY = nilaiY + arahY;  // update posisi baru-y            
  if (nilaiY>height-20 || nilaiY<20)   // cek jika bola membentur dinding atas-bawah
  {
    arahY = arahY*-1;   // jika membentur, balikkan arah y           
  }
}
