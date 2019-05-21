.class final Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;
.super Ljava/lang/Object;
.source "CaptureIndicatorDiskCacheModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule;->provideIndicatorCachePreInitializer(Lcom/android/camera/storage/cache/SingleKeyCache;Lcom/android/camera/debug/Logger$Factory;)Lcom/android/camera/behavior/Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic val$logger:Lcom/android/camera/debug/Logger;

.field private synthetic val$singleKeyCache:Lcom/android/camera/storage/cache/SingleKeyCache;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger;Lcom/android/camera/storage/cache/SingleKeyCache;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;->val$logger:Lcom/android/camera/debug/Logger;

    iput-object p2, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;->val$singleKeyCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;->val$logger:Lcom/android/camera/debug/Logger;

    const-string v1, "pre-initializing indicator cache"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/captureindicator/CaptureIndicatorDiskCacheModule$3;->val$singleKeyCache:Lcom/android/camera/storage/cache/SingleKeyCache;

    invoke-virtual {v0}, Lcom/android/camera/storage/cache/SingleKeyCache;->get()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 130
    return-void
.end method
