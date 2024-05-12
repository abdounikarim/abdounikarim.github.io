# Resume

## Website

See live resume at [https://abdounikarim.github.io](https://abdounikarim.github.io).
The website is automatically updated, thanks to [Github Pages](https://pages.github.com/).

## Update resume

Install project:

```
pnpm install
```

Now, just update the `resume.json` content.

Export to html:
```
./node_modules/.bin/resumed --theme jsonresume-theme-kendall-markdown --output index.html
```

## Change theme

If you want to use another theme, you first need to install it.
Choose your theme [here](https://www.npmjs.com/search?q=jsonresume-theme).

Don't forget to update the command when exporting your file.

## Example with latte theme

Install latte theme:

```
pnpm install jsonresume-theme-latte
```

Export to html:
```
./node_modules/.bin/resumed --theme jsonresume-theme-latte --output index.html
```

## Pdf export

Install project:

```
pnpm install html-export-pdf-cli
```

Export to pdf:
```
./node_modules/.bin/html-export-pdf-cli ./index.html -o resume.pdf
```

