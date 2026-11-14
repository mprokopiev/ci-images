# ci-images

Container images used by my CI jobs, built by GitHub Actions and published to the GitHub Container Registry.

## Images

| Image          | Pull                                               | Base                    |
| -------------- | -------------------------------------------------- | ----------------------- |
| `worker`       | `ghcr.io/mprokopiev/ci-images/worker:latest`       | Alpine                  |
| `void-builder` | `ghcr.io/mprokopiev/ci-images/void-builder:latest` | Void Linux glibc (full) |

Tags: `latest` and `YYYY-MM-DD` (UTC build date). A rebuild on the same day overwrites the date tag.

Images carry OCI labels: source repository, revision, build date, version, title, description and license.

```bash
docker pull ghcr.io/mprokopiev/ci-images/worker:latest
docker pull ghcr.io/mprokopiev/ci-images/void-builder:2026-11-13
```
