# Terraform - Deployment Zasobów Treningowych

To repozytorium zawiera kod Terraform do wdrożenia testowej grupy zasobów potrzebnych do celów szkoleniowych. Zasoby te są tymczasowe i przeznaczone do utworzenia i zniszczenia w krótkim czasie, aby zminimalizować koszty.

## Spis Treści

- [Terraform - Deployment Zasobów Treningowych](#terraform---deployment-zasobów-treningowych)
  - [Spis Treści](#spis-treści)
  - [Opis](#opis)
  - [Wymagania Wstępne](#wymagania-wstępne)
  - [Konfiguracja](#konfiguracja)

---

## Opis

Projekt ten pomaga zautomatyzować wdrożenie tymczasowych zasobów za pomocą Terraform. Jest idealny do:
- Testowania infrastruktury jako kodu (IaC).
- Sesji szkoleniowych dla nowych członków zespołu.
- Eksperymentowania z usługami w chmurze w środowisku sandboxowym.

**UWAGA**: Zasoby te są przeznaczone wyłącznie do krótkoterminowego użytku. Upewnij się, że wszystkie zasoby zostaną zniszczone po zakończeniu ich używania, aby uniknąć zbędnych kosztów.

---

## Wymagania Wstępne

Przed użyciem tego projektu upewnij się, że posiadasz:
- [Terraform](https://www.terraform.io/downloads.html) (zalecana wersja `>= 1.0`).
- Dostęp do odpowiedniego konta w chmurze (np. AWS, Azure, Google Cloud).
- Odpowiednie dane uwierzytelniające do dostępu do usług w chmurze.
- Podstawową wiedzę na temat Terraform oraz zarządzania zasobami w chmurze.

---

Kod przepisany na moduły.

Do naprawienia:
- nie dziala dodawania IP Pool do dowolnej liczby sieci
- nie testowane tworzenie większej liczby maszyn

