@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules\typescript\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules\typescript\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules\typescript\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules\typescript\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\typescript@5.7.3\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\typescript\bin\tsserver" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\typescript\bin\tsserver" %*
)
