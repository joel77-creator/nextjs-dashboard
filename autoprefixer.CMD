@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules\autoprefixer\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules\autoprefixer\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules\autoprefixer\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules\autoprefixer\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\autoprefixer@10.4.20_postcss@8.5.1\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\autoprefixer\bin\autoprefixer" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\autoprefixer\bin\autoprefixer" %*
)
