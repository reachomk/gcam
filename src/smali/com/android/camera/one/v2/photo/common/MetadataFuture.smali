.class public final Lcom/android/camera/one/v2/photo/common/MetadataFuture;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "MetadataFuture.java"


# instance fields
.field private final metadata:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->metadata:Lcom/google/common/util/concurrent/SettableFuture;

    .line 20
    return-void
.end method


# virtual methods
.method public final getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->metadata:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public final onBufferLost(Landroid/view/Surface;J)V
    .locals 4

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onBufferLost(Landroid/view/Surface;J)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->metadata:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    const-string v2, "Buffer lost"

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 32
    return-void
.end method

.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->metadata:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public final onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/common/MetadataFuture;->metadata:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v1, Lcom/google/android/apps/camera/async/ResourceUnavailableException;

    invoke-direct {v1}, Lcom/google/android/apps/camera/async/ResourceUnavailableException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 38
    return-void
.end method
