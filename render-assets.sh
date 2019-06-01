#!/bin/bash
set -ueo pipefail

if [[ ! "$(command -v inkscape || command -v rendersvg)" ]]; then
  echo "'inkscape' or 'resvg' needs to be installed to generate the PNG."
  exit 1
fi

if [[ ! "$(command -v optipng)" ]]; then
  echo "'optipng' needs to be installed to optimize the resulting PNG."
fi

chrome() (
  cd src/chrome
  ./render-assets.sh
)

gtk() (
  cd src/gtk
  ./render-assets.sh
)

gtk2_light() (
  cd src/gtk-2.0
  ./render-assets.sh light
)

gtk2_dark() (
  cd src/gtk-2.0
  ./render-assets.sh dark
)

case "${1:-}" in
  "")
    chrome
    gtk
    gtk2_light
    gtk2_dark
    ;;
  chrome)
    chrome
    ;;
  gtk)
    gtk
    ;;
  gtk2)
    gtk2_light
    gtk2_dark
    ;;
  gtk2-light)
    gtk2_light
    ;;
  gtk2-dark)
    gtk2_dark
    ;;
  *)
    echo "Unknown argument '$1'"
    echo "Use 'chrome', 'gtk', 'gtk2', 'gtk2-light' or 'gtk2-dark' as an argument."
    exit 1
    ;;
esac
