import 'dart:io';

class Peminjaman  {
     dynamic bukuDipinjam = new List(3);
     dynamic anggota = new List(3);

  void lihatDataPeminjaman(){
    print("Nama: ${anggota.getName()} NIM: ${anggota.getNIM()} Alamat: ${anggota.getAddress()}");
    print("Judul Buku: ${bukuDipinjam.getTitle()} Penulis: ${bukuDipinjam.getWriter()}");
  }
    pinjam(Mahasiswa , Buku){
      this.anggota = Mahasiswa;
      this.bukuDipinjam = Buku;
     }
 }

class Mahasiswa {
  String _name;
  var _nim;
  String _address;

  void setName(String name) {
    this._name = name;
  }

  void setNIM(var nim) {
    this._nim = nim;
  }

  void setAddress(String address) {
    this._address = address;
  }

  String getName() {
    return this._name;
  }

  String getNIM() {
    return this._nim;
  }

  String getAddress() {
    return this._address;
  }
}

class Buku {
  String title;
  String writer;

  void setTitle(String title) {
    this.title = title;
  }

  String getTitle() {
    return this.title;
  }

  void setWriter(String writer) {
    this.writer = writer;
  }

  String getWriter() {
    return this.writer;
  }
}

class Komik extends Buku {
  var gambar = true;
}

main() {
  int menu;
  var mhs = new Mahasiswa();
  var buku = new Buku();
  var komik = new Komik();
  var pinjamBuku = new Peminjaman();
  var pinjamKomik = new Peminjaman();

  print("~~~~~~~~~~~ PROGRAM PERPUSTAKAAN ~~~~~~~");
  print("~~~~~~~~~~~~~ yoga ~~~~");
  print("~~~~~~~~ 18050623024 ~~~~~~~");
  do {
    print("=======================");
    print("| DAFTAR MENU         |");
    print("| 1. Input Mahasiswa  |");
    print("| 2. Lihat Mahasiswa  |");
    print("| 3. Input Buku       |");
    print("| 4. Lihat Buku       |");
    print("| 5. Input Komik      |");
    print("| 6. Lihat Komik      |");
    print("| 7. Pinjam Buku      |");
    print("| 8. Lihat Peminjaman |");
    print("| 9. Keluar           |");
    print("=======================");
    stdout.write("Pilih Menu: ");
    menu = int.parse(stdin.readLineSync());

    switch (menu) {
      case 1:
        {
          stdout.write("Masukkan Nama: ");
          String nama = stdin.readLineSync();
          stdout.write("Masukkan NIM: ");
          var nim = stdin.readLineSync();
          stdout.write("Masukkan Alamat: ");
          String address = stdin.readLineSync();

          mhs.setName(nama);
          mhs.setNIM(nim);
          mhs.setAddress(address);
          break;
        }
      case 2:
        {
          print("Nama: ${mhs.getName()}");
          print("NIM: ${mhs.getNIM()}");
          print("Alamat: ${mhs.getAddress()}");
          break;
        }
      case 3:
        {
          stdout.write("Masukkan Judul: ");
          String title = stdin.readLineSync();
          stdout.write("Masukkan Penulis: ");
          String writer = stdin.readLineSync();

          buku.setTitle(title);
          buku.setWriter(writer);
          break;
        }
      case 4:
        {
          print("Judul Buku: ${buku.getTitle()}");
          print("Penulis: ${buku.getWriter()}");
          break;
        }
      case 5:
        {
          stdout.write("Masukkan Judul: ");
          String title = stdin.readLineSync();
          stdout.write("Masukkan Penulis: ");
          String writer = stdin.readLineSync();

          komik.setTitle(title);
          komik.setWriter(writer);

          break;
        }
      case 6:
        {
          print("Judul Buku: ${komik.getTitle()}");
          print("Penulis: ${komik.getWriter()}");
          print("Gambar: ${komik.gambar}");
          break;
        }
       case 7:
         {
           pinjamBuku.pinjam(mhs,buku);
           pinjamKomik.pinjam(mhs,komik);
           break;
         }
      case 8:
        {
          break;
        }
      case 9:
        {
          print("Terima kasih, program selesai");
          break;
        }
      default:
        {
          print("Tidak ada pilihan menu tersebut");
        }
    }
    print("==================================");
  } while (menu != 9);
}
