.class Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;
.super Ljava/lang/Object;
.source "FrameQueue.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleFrameQueueImpl"
.end annotation


# instance fields
.field private mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

.field final synthetic this$0:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->this$0:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$1;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V

    return-void
.end method


# virtual methods
.method public canPull()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPush()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 135
    :cond_0
    return-void
.end method

.method public fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 3

    .prologue
    .line 119
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameManager;->current()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->this$0:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->access$300(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[ILcom/google/android/libraries/smartburst/filterfw/FrameManager;)V

    return-object v1
.end method

.method public peek()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    return-object v0
.end method

.method public pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 107
    return-object v0
.end method

.method public pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->retain()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->setReadOnly(Z)V

    .line 127
    return-void
.end method
