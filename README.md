# 2023_Analysis_13-super-mare

## Podaci o autoru i analiziranom projektu

**Autor:** Miljan Bakić 1033/2023

**Projekat:** Super Mare je igra u kojoj igrač prolazi kroz različite nivoe, izbegava prepreke i sakuplja novčiće i živote. Cilj igre je sakupiti što više novčića i tako dospeti na listu najboljih igrača.

**Link do projekta, grana i heš kod commita:** [Projekat](https://gitlab.com/matf-bg-ac-rs/course-rs/projects-2022-2023/13-super-mare), grana `main`, commit `7d56a50275d75ad76070543b67c19bb2d4b06f98`

## Alati i uputstvo za pokretanje

**Spisak alata:**
* `clang-tidy`
* `memcheck`
* `perf` + `FlameGraph`
* `flawfinder`
* `cachegrind`

Svaki od alata ima u odgovarajućem folderu skriptu koja ga pokreće i upisuje rezultate izvršavanja u novi fajl.

## Zaključak

Na osnovu analize projekta **SuperMare** korišćenjem različitih alata, preporučuje se:

- Zamena opasnih funkcija sigurnijim alternativama radi smanjenja rizika od sigurnosnih propusta.
- Optimizacija grafičkih operacija i poboljšanje algoritama za kompresiju kako bi se smanjila potrošnja CPU resursa.
- Uvođenje redovne validacije unosa i sigurnosnih pregleda koda kao standardne prakse za osiguranje kvaliteta i sigurnosti softverskog rešenja.
- Identifikacija i optimizacija nepoznatih funkcija, kao i poboljšanje upravljanja memorijom radi postizanja boljih performansi aplikacije.
