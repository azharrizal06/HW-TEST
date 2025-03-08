# HW\_TEST

HW\_TEST adalah proyek Flutter yang dikembangkan untuk menampilkan berbagai fitur, termasuk tampilan Homepage, kontrol data, dan widget .

## Struktur Folder

```
HW_TEST/
│── assets/icons/           # Folder untuk ikon dan gambar
│── build/                  # Folder build (hasil kompilasi)
│── ios/                    # Folder untuk proyek iOS
│── lib/                    # Folder utama kode sumber Flutter
│   ├── Cons_colors/        # Folder untuk konstanta warna & style
│   │   ├── Cons_colors.dart
│   ├── home/               # Folder utama untuk halaman utama
│   │   ├── controller/     # Folder untuk controller
│   │   │   ├── ChartsController.dart
│   │   │   ├── HomeController.dart
│   │   ├── model/          # Folder untuk model data
│   │   │   ├── Respon_model_benner.dart
│   │   │   ├── Respon_model_charts.dart
│   │   ├── views/          # Folder untuk tampilan utama
│   │   │   ├── chartview.dart
│   │   │   ├── dashboard.dart
│   │   │   ├── homeView.dart
│   ├── Url_services/       # Folder untuk URL layanan API
│   │   ├── baseUrl.dart
│   ├── Widget/             # Folder untuk komponen widget 
│   │   ├── benner.dart
│   │   ├── buttomMusik.dart
│   │   ├── favorit.dart
│   │   ├── fromloginCart.dart
│── main.dart               # Entry point aplikasi Flutter
```

## 🚀 Instalasi

1. Pastikan Flutter sudah terinstal di perangkat Anda.
2. Clone repositori ini:
   ```sh
   git clone <repo-url>
   ```
3. Masuk ke folder proyek:
   ```sh
   cd HW_TEST
   ```
4. Jalankan perintah berikut untuk menginstal dependensi:
   ```sh
   flutter pub get
   ```
5. Jalankan proyek:
   ```sh
   flutter run
   ```

## Versi Flutter

Proyek ini dikembangkan menggunakan:

```
Flutter 3.13.2 
```

## Dependensi yang Digunakan

Proyek ini menggunakan dependensi berikut:

```yaml
dependencies:
  flutter:
    sdk: flutter
  carousel_slider: ^5.0.0
  flutter_svg: ^2.0.10
  get: ^4.6.6
  http: ^1.1.0
  logger: ^2.5.0
```

### Penjelasan Dependensi:

- **carousel\_slider**: Digunakan untuk menampilkan slider gambar atau elemen lainnya dalam bentuk carousel.
- **flutter\_svg**: Memungkinkan penggunaan file SVG dalam Flutter, berguna untuk menampilkan ikon atau gambar vektor.
- **get**: Library untuk manajemen state dan navigasi yang ringan serta mudah digunakan.
- **http**: Digunakan untuk melakukan request HTTP ke API atau layanan backend.
- **logger**: Mempermudah proses logging dalam aplikasi, berguna untuk debugging dan pencatatan aktivitas aplikasi.

### Manajemen State

Proyek ini menggunakan **GetX** sebagai state management utama. GetX digunakan untuk mengelola state aplikasi dengan cara yang lebih efisien, termasuk navigasi dan dependensi injection.

## Branch Fitur

Proyek ini memiliki 3 branch utama untuk fitur:

1. **homepage** → Branch utama yang berisi kode stabil.
2. **feature/banner** → Branch untuk pengembangan fitur banner.
3. **feature/charts** → Branch untuk pengembangan fitur charts.

## 💡 Kontribusi

Jika ingin berkontribusi pada proyek ini:

1. Fork repositori ini.
2. Buat branch baru:
   ```sh
   git checkout -b feature/nama-fitur
   ```
3. Commit perubahan Anda:
   ```sh
   git commit -m "Menambahkan fitur baru"
   ```
4. Push ke branch Anda:
   ```sh
   git push origin feature/nama-fitur
   ```
5. Buat Pull Request.

##

---

Happy coding! 🚀

