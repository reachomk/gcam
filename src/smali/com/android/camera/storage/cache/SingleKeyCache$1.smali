.class final Lcom/android/camera/storage/cache/SingleKeyCache$1;
.super Ljava/lang/Object;
.source "SingleKeyCache.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/cache/SingleKeyCache;->get()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        "TV;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/cache/SingleKeyCache;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/cache/SingleKeyCache;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/storage/cache/SingleKeyCache$1;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$1;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$000(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;->getFile(I)Ljava/io/File;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "retrieved file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/storage/cache/SingleKeyCache$1;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v2}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$200(Lcom/android/camera/storage/cache/SingleKeyCache;)Lcom/android/camera/storage/cache/Decoder;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/camera/storage/cache/Decoder;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xf

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "decoded value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$1;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$300(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$1;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0, v2}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$402(Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :try_start_3
    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    .line 83
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 89
    :goto_0
    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 76
    :catch_0
    move-exception v0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_1
    if-eqz v1, :cond_0

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_2
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 88
    :catch_1
    move-exception v0

    .line 89
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_2
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null value from disk cache"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v0

    goto :goto_0

    .line 83
    :catchall_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    check-cast p1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/android/camera/storage/cache/SingleKeyCache$1;->apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
