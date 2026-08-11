#include <errno.h>
#include <inttypes.h>
#include <libproc.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/proc_info.h>
#include <sys/types.h>

static void die(const char *message) {
  perror(message);
  exit(1);
}

int main(int argc, char **argv) {
  if (argc != 2) {
    fprintf(stderr, "usage: %s <process-group-id>\n", argv[0]);
    return 2;
  }

  errno = 0;
  char *end = NULL;
  long requested_group = strtol(argv[1], &end, 10);
  if (errno != 0 || end == argv[1] || *end != '\0' || requested_group <= 0) {
    fprintf(stderr, "invalid process-group-id: %s\n", argv[1]);
    return 2;
  }

  int bytes = proc_listallpids(NULL, 0);
  if (bytes <= 0) {
    die("proc_listallpids");
  }

  size_t capacity = (size_t)bytes / sizeof(pid_t) + 256;
  pid_t *pids = calloc(capacity, sizeof(pid_t));
  if (pids == NULL) {
    die("calloc");
  }

  int count = proc_listallpids(pids, (int)(capacity * sizeof(pid_t)));
  if (count < 0) {
    free(pids);
    die("proc_listallpids");
  }

  uint64_t resident_bytes = 0;
  for (int index = 0; index < count; ++index) {
    struct proc_bsdinfo bsd = {0};
    int bsd_bytes = proc_pidinfo(
        pids[index], PROC_PIDTBSDINFO, 0, &bsd, sizeof(bsd));
    if (bsd_bytes != sizeof(bsd) || bsd.pbi_pgid != requested_group) {
      continue;
    }

    struct proc_taskinfo task = {0};
    int task_bytes = proc_pidinfo(
        pids[index], PROC_PIDTASKINFO, 0, &task, sizeof(task));
    if (task_bytes == sizeof(task)) {
      resident_bytes += task.pti_resident_size;
    }
  }

  free(pids);
  printf("%" PRIu64 "\n", (resident_bytes + 1023) / 1024);
  return 0;
}
