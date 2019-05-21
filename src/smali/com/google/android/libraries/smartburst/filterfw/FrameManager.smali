.class public Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
.super Ljava/lang/Object;
.source "FrameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLfu;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$PriorityBackingCache;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheNone;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CACHE_SIZE:I = 0xc00000

.field public static final FRAME_CACHE_LFU:I = 0x2

.field public static final FRAME_CACHE_LRU:I = 0x1

.field public static final FRAME_CACHE_NONE:I = 0x0

.field public static final SLOT_FLAGS_NONE:I = 0x0

.field public static final SLOT_FLAG_STICKY:I = 0x1

.field private static final mCurrentFrameManager:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

.field private mFrameSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;",
            ">;"
        }
    .end annotation
.end field

.field private mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mBackings:Ljava/util/Set;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    .line 411
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 412
    packed-switch p2, :pswitch_data_0

    .line 423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown cache-type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheNone;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheNone;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    .line 421
    :goto_0
    return-void

    .line 417
    :pswitch_1
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLru;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    goto :goto_0

    .line 420
    :pswitch_2
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLfu;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCacheLfu;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameManager$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100([I[I)Z
    .locals 1

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->dimensionsCompatible([I[I)Z

    move-result v0

    return v0
.end method

.method private assertInGraphRun()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->current()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eq v0, v1, :cond_1

    .line 494
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to access FrameManager Frame data outside of graph run-loop!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_1
    return-void
.end method

.method private assertNotRunning()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to modify FrameManager while graph is running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    return-void
.end method

.method public static attachToThread()V
    .locals 3

    .prologue
    .line 271
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;-><init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;I)V

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->attachManagerToThread()V

    .line 272
    return-void
.end method

.method public static current()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    return-object v0
.end method

.method public static detachFromThread()V
    .locals 3

    .prologue
    .line 275
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    monitor-enter v1

    .line 276
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->current()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    move-result-object v0

    .line 277
    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No FrameManager attached to current thread!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 280
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->destroyBackings()V

    .line 281
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 282
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static dimensionsCompatible([I[I)Z
    .locals 1

    .prologue
    .line 482
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addFrameSlot(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/FrameType;I)V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->assertNotRunning()V

    .line 354
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    .line 355
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->removeFrameSlot(Ljava/lang/String;)V

    .line 358
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    invoke-direct {v0, p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;I)V

    .line 359
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method attachManagerToThread()V
    .locals 3

    .prologue
    .line 472
    sget-object v1, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    monitor-enter v1

    .line 473
    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->current()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "FrameManager already attached to current thread!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 476
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCurrentFrameManager:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 477
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->clear()V

    .line 398
    return-void
.end method

.method destroyBackings()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mBackings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    .line 451
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->destroy()V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mBackings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 454
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->clear()V

    .line 455
    return-void
.end method

.method fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->fetchBacking(II[II)Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;

    move-result-object v0

    return-object v0
.end method

.method public fetchFrame(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->assertInGraphRun()V

    .line 390
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getSlot(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->getFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    return-object v0
.end method

.method public getCacheSize()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->getSize()I

    move-result v0

    return v0
.end method

.method public getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    move-result-object v0

    return-object v0
.end method

.method public getRunner()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    return-object v0
.end method

.method getSlot(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    .line 459
    if-nez v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown frame slot \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    return-object v0
.end method

.method public importFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Frame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be read-only to import into another FrameManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->makeCpuCopy(Lcom/google/android/libraries/smartburst/filterfw/FrameManager;)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    return-object v0
.end method

.method onBackingAvailable(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->cacheBacking(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;->destroy()V

    .line 441
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mBackings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    return-void
.end method

.method onBackingCreated(Lcom/google/android/libraries/smartburst/filterfw/BackingStore$Backing;)V
    .locals 1

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mBackings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    return-void
.end method

.method onBeginRun()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    .line 467
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->markWritable()V

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public removeFrameSlot(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->assertNotRunning()V

    .line 372
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getSlot(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->releaseFrame()V

    .line 374
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mFrameSlots:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    return-void
.end method

.method public setCacheSize(I)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->mCache:Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$BackingCache;->setSize(I)V

    .line 312
    return-void
.end method

.method public storeFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->assertInGraphRun()V

    .line 382
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->getSlot(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager$FrameSlot;->assignFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 383
    return-void
.end method
