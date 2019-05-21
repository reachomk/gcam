.class public final Lcom/android/camera/storage/cache/SingleKeyCache;
.super Ljava/lang/Object;
.source "SingleKeyCache.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final decoder:Lcom/android/camera/storage/cache/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/storage/cache/Decoder",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final diskCacheFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/android/camera/storage/cache/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/storage/cache/Encoder",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private final key:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private readCache:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "SingleKeyCache"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/storage/cache/SingleKeyCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/cache/Decoder;Lcom/android/camera/storage/cache/Encoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/storage/cache/Decoder",
            "<TV;>;",
            "Lcom/android/camera/storage/cache/Encoder",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->lock:Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->diskCacheFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    iput-object p2, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->key:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->executor:Ljava/util/concurrent/Executor;

    .line 50
    iput-object p4, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->decoder:Lcom/android/camera/storage/cache/Decoder;

    .line 51
    iput-object p5, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->encoder:Lcom/android/camera/storage/cache/Encoder;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/storage/cache/SingleKeyCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/storage/cache/SingleKeyCache;)Lcom/android/camera/storage/cache/Decoder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->decoder:Lcom/android/camera/storage/cache/Decoder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->readCache:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/storage/cache/SingleKeyCache;)Lcom/android/camera/storage/cache/Encoder;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->encoder:Lcom/android/camera/storage/cache/Encoder;

    return-object v0
.end method


# virtual methods
.method public final get()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->readCache:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->readCache:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    monitor-exit v1

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->diskCacheFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/storage/cache/SingleKeyCache$1;

    invoke-direct {v1, p0}, Lcom/android/camera/storage/cache/SingleKeyCache$1;-><init>(Lcom/android/camera/storage/cache/SingleKeyCache;)V

    iget-object v2, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final purge()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->readCache:Ljava/lang/Object;

    .line 102
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->diskCacheFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/storage/cache/SingleKeyCache$2;

    invoke-direct {v1, p0}, Lcom/android/camera/storage/cache/SingleKeyCache$2;-><init>(Lcom/android/camera/storage/cache/SingleKeyCache;)V

    iget-object v2, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->executor:Ljava/util/concurrent/Executor;

    .line 105
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 119
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final update(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/android/camera/storage/cache/SingleKeyCache;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "pending update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->diskCacheFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Lcom/android/camera/storage/cache/SingleKeyCache$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/storage/cache/SingleKeyCache$3;-><init>(Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/storage/cache/SingleKeyCache;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
