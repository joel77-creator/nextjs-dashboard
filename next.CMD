@SETLOCAL
@IF NOT DEFINED NODE_PATH (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\dist\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\dist\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules"
) ELSE (
  @SET "NODE_PATH=C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\dist\bin\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\dist\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules\next\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\next@15.1.6_react-dom@19.0.0_react@19.0.0__react@19.0.0\node_modules;C:\Users\Lucho\nextjs-dashboard\node_modules\.pnpm\node_modules;%NODE_PATH%"
)
@IF EXIST "%~dp0\node.exe" (
  "%~dp0\node.exe"  "%~dp0\..\next\dist\bin\next" %*
) ELSE (
  @SET PATHEXT=%PATHEXT:;.JS;=;%
  node  "%~dp0\..\next\dist\bin\next" %*
)
