.class final Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RepeatingRequestTracker;
.super Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;
.source "RepeatingFrameRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RepeatingRequestTracker"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V
    .locals 1

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RepeatingRequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;-><init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;B)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RepeatingRequestTracker;-><init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RepeatingRequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$100(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RepeatingRequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$210(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->onStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
