.class final Lcom/android/camera/storage/cache/SingleKeyCache$2;
.super Ljava/lang/Object;
.source "SingleKeyCache.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/storage/cache/SingleKeyCache;->purge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/storage/cache/SingleKeyCache;


# direct methods
.method constructor <init>(Lcom/android/camera/storage/cache/SingleKeyCache;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/camera/storage/cache/SingleKeyCache$2;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/storage/cache/SingleKeyCache$2;->this$0:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-static {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$000(Lcom/android/camera/storage/cache/SingleKeyCache;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/camera/storage/cache/SingleKeyCache;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Purge cache failed."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 107
    check-cast p1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/android/camera/storage/cache/SingleKeyCache$2;->apply(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
