.class Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;
.super Ljava/lang/Object;
.source "FrameQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$SingleFrameQueueImpl;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;,
        Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

.field private mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 181
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mName:Ljava/lang/String;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;-><init>(Lcom/google/android/libraries/smartburst/filterfw/FrameType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;)Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    return-object v0
.end method


# virtual methods
.method public canPull()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->canPull()Z

    move-result v0

    return v0
.end method

.method public canPush()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->canPush()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->clear()V

    .line 177
    return-void
.end method

.method public fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    return-object v0
.end method

.method public peek()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->peek()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    return-object v0
.end method

.method public pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    return-object v0
.end method

.method public pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mQueueImpl:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$QueueImpl;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->mName:Ljava/lang/String;

    return-object v0
.end method
