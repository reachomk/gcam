.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;
.super Ljava/lang/Object;
.source "CaptureIndicatorDiskCacheModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->provideDiskCacheFuture(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$context:Landroid/content/Context;

.field private synthetic val$future:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/io/File;

    const-string v2, "indicatorDiskCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    const/4 v2, 0x1

    const-wide/32 v4, 0x4c4b40

    invoke-static {v1, v0, v2, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/DiskLruCache;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;->val$future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
