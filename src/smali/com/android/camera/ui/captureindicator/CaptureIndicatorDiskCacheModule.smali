.class public final Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;
.super Ljava/lang/Object;
.source "CaptureIndicatorDiskCacheModule.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "CptrIndDskCsh"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static provideDiskCacheFuture(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$2;-><init>(Landroid/content/Context;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-object v0
.end method

.method public static provideIndicatorBitmapCache(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/storage/cache/SingleKeyCache;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/debug/Logger$Factory;",
            ")",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/android/camera/storage/cache/SingleKeyCache;

    const-string v2, "indicatorThumbnail"

    new-instance v4, Lcom/android/camera/storage/cache/BitmapDecoder;

    invoke-direct {v4}, Lcom/android/camera/storage/cache/BitmapDecoder;-><init>()V

    new-instance v5, Lcom/android/camera/storage/cache/BitmapEncoder;

    invoke-direct {v5, p2}, Lcom/android/camera/storage/cache/BitmapEncoder;-><init>(Lcom/android/camera/debug/Logger$Factory;)V

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/storage/cache/SingleKeyCache;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/android/camera/storage/cache/Decoder;Lcom/android/camera/storage/cache/Encoder;)V

    return-object v0
.end method

.method public static provideIndicatorCachePreInitializer(Lcom/android/camera/storage/cache/SingleKeyCache;Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/behavior/Behavior;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/storage/cache/SingleKeyCache",
            "<",
            "Lcom/android/camera/storage/cache/OrientationBitmap;",
            ">;",
            "Lcom/android/camera/debug/Logger$Factory;",
            ")",
            "Lcom/android/camera/behavior/Behavior;"
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->TAG:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;

    invoke-direct {v1, v0, p0}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;-><init>(Lcom/android/camera/debug/Logger;Lcom/android/camera/storage/cache/SingleKeyCache;)V

    invoke-static {v1}, Lcom/android/camera/behavior/Behaviors;->of(Ljava/lang/Runnable;)Lcom/android/camera/behavior/Behavior;

    move-result-object v0

    return-object v0
.end method

.method public static provideIndicatorUpdateService()Ljava/util/concurrent/Executor;
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$1;

    invoke-direct {v8}, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$1;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 76
    return-object v1
.end method
