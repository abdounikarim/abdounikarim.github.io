# Resume

## Website

See live resume at [https://abdounikarim.github.io](https://abdounikarim.github.io).
The website is automatically updated, thanks to [Github Pages](https://pages.github.com/).

## Export resume from LinkedIn

If you want to export your resume from LinkedIn, you can use [JSON Resume Exporter](https://chromewebstore.google.com/detail/json-resume-exporter/caobgmmcpklomkcckaenhjlokpmfbdec?pli=1).
More on that [here](https://jsonresume.org/getting-started).

## Update resume

Install project:

```
pnpm install
```

Now, just update the `resume.json` content.

Launch the server:
```
make serve
```

Export to html:
```
make html
```

Export to pdf:
```
make pdf
```

Export to html and pdf:
```
make all
```

## Change theme

If you want to use another theme, you first need to install it.
Choose your theme [here](https://www.npmjs.com/search?q=jsonresume-theme).

Don't forget to update the command when exporting your file.

## Example with latte theme

Install latte theme:

```
pnpm install -D jsonresume-theme-latte
```

Launch the server:
```
JSON_RESUME_THEME=jsonresume-theme-latte make serve
```

Export to html:
```
JSON_RESUME_THEME=jsonresume-theme-latte make html
```

Export to pdf:
```
JSON_RESUME_THEME=jsonresume-theme-latte make pdf
```

Export to html and pdf:
```
JSON_RESUME_THEME=jsonresume-theme-latte make all
```
