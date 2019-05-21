.class Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;
.super Lcom/android/camera/one/v2/core/ResponseListener;
.source "RepeatingFrameRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestTracker"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;


# direct methods
.method private constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-direct {p0}, Lcom/android/camera/one/v2/core/ResponseListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;B)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;-><init>(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V

    return-void
.end method


# virtual methods
.method public onStarted(Lcom/android/camera/one/v2/core/ImageId;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$100(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$308(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    .line 131
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$408(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    .line 132
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$400(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$500(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$402(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;I)I

    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$600(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    const-string v2, "Backing off"

    invoke-virtual {v0, v2}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$310(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)I

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor$RequestTracker;->this$0:Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;->access$700(Lcom/android/camera/one/v2/core/RepeatingFrameRequestProcessor;)V
    :try_end_1
    .catch Lcom/google/android/apps/camera/async/ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :goto_0
    return-void

    .line 137
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 145
    :catch_0
    move-exception v0

    goto :goto_0
.end method
