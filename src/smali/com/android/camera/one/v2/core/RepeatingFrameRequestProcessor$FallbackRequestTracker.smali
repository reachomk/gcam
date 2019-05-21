.class final Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$FallbackRequestTracker;
.super Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;
.source "RepeatingFrameRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FallbackRequestTracker"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$FallbackRequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;-><init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;B)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$FallbackRequestTracker;-><init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V

    return-void
.end method


# virtual methods
.method public final onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$FallbackRequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$600(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v1, "Processing fallback request"

    invoke-virtual {v0, v1}, Lcom/android/camera/debug/Logger;->d(Ljava/lang/String;)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->onStarted(Lcom/android/camera/one/v2/core/ImageId;)V

    .line 156
    return-void
.end method
