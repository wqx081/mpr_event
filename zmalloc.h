#ifndef _ZMALLOC_H
#define _ZMALLOC_H

void *zmalloc(size_t size);
void *zcalloc(size_t size);
void *zrealloc(void *ptr, size_t size);
void zfree(void *ptr);
char *zstrdup(const char *s);
size_t zmalloc_used_memory(void);
void zmalloc_enable_thread_safeness(void);
float zmalloc_get_fragmentation_ratio(void);
size_t zmalloc_get_rss(void);
size_t zmalloc_allocations_for_size(size_t size);

#define ZMALLOC_MAX_ALLOC_STAT 256

#endif /* _ZMALLOC_H */
