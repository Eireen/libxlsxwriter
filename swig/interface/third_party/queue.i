#define TRACEBUF

#define STAILQ_ENTRY(type)            \
struct {                \
  struct type *stqe_next; /* next element */      \
}

#define TAILQ_ENTRY(type)           \
struct {                \
  struct type *tqe_next;  /* next element */      \
  struct type **tqe_prev; /* address of previous next element */  \
  TRACEBUF              \
}
