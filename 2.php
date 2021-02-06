
  <?php 
  echo "apa saya anda kamu hallo apa yang anda lakukan? selamat pagi kamu ternyata cantik juga ya yukk belajar javascript kamu itu adalah kebanggaan saya music hari ini yang akan di putar oleh gabut FM apa ya?";
  echo"</br>";
  echo"</br>";
  $kalimat = "apa saya anda kamu hallo 
    apa yang anda lakukan? selamat pagi kamu ternyata cantik juga ya yukk belajar javascript kamu itu adalah kebanggaan saya music hari ini yang akan di putar oleh gabut FM apa ya?";
    
    echo "kata apa muncul sebanyak :"; echo substr_count($kalimat,"apa");
    echo"</br>";
    echo"kata saya muncul sebanyak:"; echo substr_count($kalimat,"saya");
    echo"</br>";
    echo"kata anda muncul sebanyak:"; echo substr_count($kalimat,"anda");
    echo"</br>";
    echo"kata kamu muncul sebanyak:"; echo substr_count($kalimat,"kamu");
    echo"</br>";
    echo"kata hello muncul sebanyak:"; echo substr_count($kalimat,"hello");
 ?>