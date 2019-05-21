.class final Lcom/android/camera/storage/cache/SingleKeyCache$3;
.super Ljava/lang/Object;
.source "SingleKeyCache.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/cache/SingleKeyCache;->update(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

.field private synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    iput-object p2, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->val$item:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "updating: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$000(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "updating file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v2}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$500(Lcom/android/camera/storage/cache/SingleKeyCache;)Lcom/android/camera/storage/cache/Encoder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->val$item:Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Lcom/android/camera/storage/cache/Encoder;->encode(Ljava/lang/Object;Ljava/io/File;)V

    .line 142
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->commit()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$300(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$3;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$402(Lcom/android/camera/storage/cache/SingleKeyCache;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    :try_start_3
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    .line 152
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 154
    :goto_1
    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abortUnlessCommitted()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_0
    :try_start_7
    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null editor, potential concurrent edit"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0
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
    .line 131
    check-cast p1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/android/camera/storage/cache/SingleKeyCache$3;->apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
