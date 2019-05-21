.class final Lcom/bumptech/glide/load/engine/DecodeJob;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/DecodeJob$Stage;,
        Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/DecodeJob$Callback;,
        Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;,
        Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/engine/DecodeJob",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
            "<TR;>;"
        }
    .end annotation
.end field

.field private currentAttemptingKey:Lcom/bumptech/glide/load/Key;

.field private currentData:Ljava/lang/Object;

.field private currentDataSource:Lcom/bumptech/glide/load/DataSource;

.field private currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

.field private currentSourceKey:Lcom/bumptech/glide/load/Key;

.field private currentThread:Ljava/lang/Thread;

.field private final decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeHelper",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager",
            "<*>;"
        }
    .end annotation
.end field

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private glideContext:Lcom/bumptech/glide/GlideContext;

.field private height:I

.field private volatile isCallbackNotified:Z

.field private volatile isCancelled:Z

.field private loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/bumptech/glide/load/Options;

.field private order:I

.field private final pool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private final releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

.field private runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

.field private signature:Lcom/bumptech/glide/load/Key;

.field private stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

.field private startFetchTime:J

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private width:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Landroid/support/v4/util/Pools$Pool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    .line 44
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;-><init>(B)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    .line 45
    new-instance v0, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;-><init>(B)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    .line 75
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    .line 76
    return-void
.end method

.method static synthetic access$1000(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DecodeHelper;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    return v0
.end method

.method static synthetic access$500(Lcom/bumptech/glide/load/engine/DecodeJob;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    return v0
.end method

.method static synthetic access$600(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Options;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method static synthetic access$800(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bumptech/glide/load/engine/DecodeJob;)Lcom/bumptech/glide/load/Key;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    return-object v0
.end method

.method private final decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 418
    if-nez p2, :cond_0

    .line 428
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    .line 426
    :goto_0
    return-object v0

    .line 421
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v2

    .line 4435
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/DecodeHelper;->getLoadPath(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    .line 4436
    invoke-direct {p0, p2, p3, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 423
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Decoded result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4451
    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw v0
.end method

.method private final decodeFromRetrievedData()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 368
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "Retrieved data"

    iget-wide v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1e

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ", cache key: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", fetcher: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V

    .line 376
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromData(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 381
    :goto_0
    if-eqz v1, :cond_5

    .line 382
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 3389
    instance-of v0, v1, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 3390
    check-cast v0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    .line 3395
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3396
    invoke-static {v1}, Lcom/bumptech/glide/load/engine/LockedResource;->obtain(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/LockedResource;

    move-result-object v0

    move-object v1, v0

    .line 4300
    :goto_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 4301
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v2, v1, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    .line 3402
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 3404
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->hasResourceToEncode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3405
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->encode(Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/Options;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3408
    :cond_2
    if-eqz v0, :cond_3

    .line 3409
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 3411
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onEncodeComplete()V

    .line 386
    :goto_2
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 3041
    invoke-virtual {v0, v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 379
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_0

    .line 3408
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 3409
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/LockedResource;->unlock()V

    .line 3411
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->onEncodeComplete()V

    throw v1

    .line 384
    :cond_5
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_1
.end method

.method private final getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/ResourceCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    .line 263
    :goto_0
    return-object v0

    .line 259
    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/engine/DataCacheGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/DataCacheGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    goto :goto_0

    .line 261
    :pswitch_3
    new-instance v0, Lcom/bumptech/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/SourceGenerator;-><init>(Lcom/bumptech/glide/load/engine/DecodeHelper;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    goto :goto_0

    .line 263
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;
    .locals 4

    .prologue
    .line 313
    :goto_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 325
    :goto_1
    return-object v0

    .line 316
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_0

    .line 322
    :pswitch_3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    .line 325
    :pswitch_4
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    goto :goto_1

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private final logWithTimeAndKey(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    .prologue
    .line 455
    const-string v1, "DecodeJob"

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p4, :cond_1

    .line 456
    const-string v5, ", "

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", load key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private final notifyFailed()V
    .locals 4

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->setNotifiedOrThrow()V

    .line 294
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 295
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    .line 2159
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 297
    :cond_0
    return-void
.end method

.method private final onEncodeComplete()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->onEncodeComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 153
    :cond_0
    return-void
.end method

.method private final releaseInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->reset()V

    .line 166
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->deferredEncodeManager:Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager;->clear()V

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeHelper;->clear()V

    .line 168
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 169
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 170
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 171
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 172
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 173
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 174
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 175
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 176
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 177
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 183
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->pool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method private final runGenerators()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    .line 271
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->startFetchTime:J

    .line 272
    const/4 v0, 0x0

    .line 273
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 274
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->startNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 276
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 278
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v1, v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->reschedule()V

    .line 290
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->FINISHED:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    .line 285
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    goto :goto_0
.end method

.method private final runLoadPath(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/LoadPath",
            "<TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/engine/GlideException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object v1

    .line 443
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    iget v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    new-instance v5, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p2, v0}, Lcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;-><init>(Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/load/DataSource;B)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;->load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$DecodeCallback;)Lcom/bumptech/glide/load/engine/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 446
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    .line 443
    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    throw v0
.end method

.method private final setNotifiedOrThrow()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    .line 306
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCallbackNotified:Z

    .line 310
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    .line 203
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->cancel()V

    .line 207
    :cond_0
    return-void
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 33
    check-cast p1, Lcom/bumptech/glide/load/engine/DecodeJob;

    .line 5198
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    .line 6198
    iget-object v1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    invoke-virtual {v1}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v1

    .line 5190
    sub-int/2addr v0, v1

    .line 5191
    if-nez v0, :cond_0

    .line 5192
    iget v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    iget v1, p1, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    sub-int/2addr v0, v1

    .line 33
    :cond_0
    return v0
.end method

.method public final getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method final init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/EngineKey;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/DecodeJob$Callback;I)Lcom/bumptech/glide/load/engine/DecodeJob;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/EngineKey;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/Transformation",
            "<*>;>;ZZ",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
            "<TR;>;I)",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeHelper:Lcom/bumptech/glide/load/engine/DecodeHelper;

    iget-object v14, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheProvider:Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p14

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v1 .. v14}, Lcom/bumptech/glide/load/engine/DecodeHelper;->init(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZLcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;)Lcom/bumptech/glide/load/engine/DecodeHelper;

    .line 109
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->glideContext:Lcom/bumptech/glide/GlideContext;

    .line 110
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->signature:Lcom/bumptech/glide/load/Key;

    .line 111
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->priority:Lcom/bumptech/glide/Priority;

    .line 112
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->loadKey:Lcom/bumptech/glide/load/engine/EngineKey;

    .line 113
    move/from16 v0, p5

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->width:I

    .line 114
    move/from16 v0, p6

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->height:I

    .line 115
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 116
    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->onlyRetrieveFromCache:Z

    .line 117
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->options:Lcom/bumptech/glide/load/Options;

    .line 118
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    .line 119
    move/from16 v0, p16

    iput v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->order:I

    .line 120
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 121
    return-object p0
.end method

.method public final onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 357
    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/bumptech/glide/load/engine/GlideException;->setLoggingDetails(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    .line 358
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->exceptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 360
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 361
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto :goto_0
.end method

.method public final onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher",
            "<*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentSourceKey:Lcom/bumptech/glide/load/Key;

    .line 341
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentData:Ljava/lang/Object;

    .line 342
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 343
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentDataSource:Lcom/bumptech/glide/load/DataSource;

    .line 344
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentAttemptingKey:Lcom/bumptech/glide/load/Key;

    .line 345
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 346
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->DECODE_DATA:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 347
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 351
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V

    goto :goto_0
.end method

.method final release(Z)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseManager:Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob$ReleaseManager;->release(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->releaseInternal()V

    .line 143
    :cond_0
    return-void
.end method

.method public final reschedule()V
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    .line 334
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->callback:Lcom/bumptech/glide/load/engine/DecodeJob$Callback;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/DecodeJob$Callback;->reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V

    .line 335
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1250
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->runReason:Lcom/bumptech/glide/load/engine/DecodeJob$RunReason;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unrecognized run reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v1, "DecodeJob"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    const-string v1, "DecodeJob"

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", stage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    sget-object v2, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->ENCODE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v1, v2, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->notifyFailed()V

    .line 230
    :cond_3
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->isCancelled:Z

    if-nez v1, :cond_0

    .line 231
    throw v0

    .line 1239
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->stage:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    .line 1240
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextGenerator()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/DecodeJob;->currentGenerator:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    .line 1241
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto/16 :goto_0

    .line 1244
    :pswitch_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->runGenerators()V

    goto/16 :goto_0

    .line 1247
    :pswitch_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/DecodeJob;->decodeFromRetrievedData()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final willDecodeFromCache()Z
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->INITIALIZE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->getNextStage(Lcom/bumptech/glide/load/engine/DecodeJob$Stage;)Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/engine/DecodeJob$Stage;->DATA_CACHE:Lcom/bumptech/glide/load/engine/DecodeJob$Stage;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
