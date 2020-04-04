docker run --rm --volume "$(pwd):/data" \
  --user "$(id -u):$(id -g)" \
  pandoc/latex:2.6 -s -f markdown-smart \
  --metadata pagetitle="jason(7) - cloud and database-wrangler - Linux man page" \
  -c jason.html.css README.md -o jason.html

docker run --rm --volume "$(pwd):/data" \
  --user "$(id -u):$(id -g)" \
  pandoc/latex:2.6 -s -f markdown-smart --pdf-engine=xelatex \
  --metadata pagetitle="jason(7) - cloud and database-wrangler - Linux man page" \
  -c jason.html.css README.md -o jason.pdf

docker run --rm --volume "$(pwd):/data" \
  --user "$(id -u):$(id -g)" \
  pandoc/latex:2.6 -s -f markdown-smart\
  --metadata pagetitle="jason(7) - cloud and database-wrangler - Linux man page" \
  -t man README.md -o jason.7
