.class final Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "ResponseListenerBroadcaster.java"


# instance fields
.field private final listeners:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/core/ResponseListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    .line 24
    return-void
.end method

.method public constructor <init>([Lcom/android/camera/one/v2/core/ResponseListener;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    .line 20
    return-void
.end method


# virtual methods
.method public final afterStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 36
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->afterStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final onBufferLost(Landroid/view/Surface;J)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 64
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onBufferLost(Landroid/view/Surface;J)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 50
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 57
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onFailed(Lcom/google/android/apps/camera/proxy/camera2/CaptureFailureProxy;)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public final onProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 43
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onProgressed(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public final onSequenceAborted(I)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 71
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceAborted(I)V

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method public final onSequenceCompleted(IJ)V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 78
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/one/v2/core/ResponseListener;->onSequenceCompleted(IJ)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/one/v2/core/ResponseListenerBroadcaster;->listeners:Lcom/google/common/collect/ImmutableList;

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/camera/one/v2/core/ResponseListener;

    .line 29
    invoke-virtual {v1, p1}, Lcom/android/camera/one/v2/core/ResponseListener;->onStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
