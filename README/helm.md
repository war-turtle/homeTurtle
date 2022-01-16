### Command to create helm chart
```bash
helm create mychart
```

### Command to add repo
```bash
helm repo add <repo-name> <repo-url>
```

### To see the template build by your chart
in the parent directory of your chart run:
```bash
helm template <folder-name>
```

### To update dependencies of you chart
```bash
helm dependency update <folder-name>
```

### To install a helm chart
```bash
helm install <chart-name> <chart-path. Example: <repo-name/chart-name> or <local path to chart> >
```

use `--debug` to show verbose output
use `--dry-run` to dry run you helm chart

### To uninstall a chart
```bash
helm uninstall <chart-name>
```

### To list all the installed chart
```
helm list -A
```