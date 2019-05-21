.class public final Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "RingBufferPolicy.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiscardStaleFrames"
.end annotation


# instance fields
.field private final frameTimeoutNanos:J

.field private final mostRecentTimestamp:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(J)V
    .locals 5

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;->mostRecentTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    iput-wide p1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;->frameTimeoutNanos:J

    .line 85
    return-void
.end method


# virtual methods
.method public final discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 94
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 95
    iget-object v0, p0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;->mostRecentTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 96
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    move v0, v1

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-wide v6, p0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;->frameTimeoutNanos:J

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final onCompleted(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy$DiscardStaleFrames;->mostRecentTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 90
    return-void
.end method
