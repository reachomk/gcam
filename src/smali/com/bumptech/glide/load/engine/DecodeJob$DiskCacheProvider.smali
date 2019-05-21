.class Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/DecodeJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "DiskCacheProvider"
.end annotation


# instance fields
.field private volatile diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

.field private final factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
    .locals 0

    .prologue
    .line 2340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2341
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 2342
    return-void
.end method


# virtual methods
.method public getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_2

    .line 1347
    monitor-enter p0

    .line 1348
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->factory:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_1

    .line 1352
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    .line 1354
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1356
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;->diskCache:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object v0

    .line 1354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
