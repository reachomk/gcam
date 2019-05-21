.class public final Lcom/google/android/libraries/smartburst/filterfw/InputPort;
.super Ljava/lang/Object;
.source "InputPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/InputPort$FieldBinding;,
        Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;
    }
.end annotation


# instance fields
.field private mAutoPullEnabled:Z

.field private mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

.field private mInfo:Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

.field private mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

.field private mName:Ljava/lang/String;

.field private mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

.field private mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

.field private mSourceHint:Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

.field private mWaitForFrame:Z


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

    .line 42
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    .line 43
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mWaitForFrame:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mAutoPullEnabled:Z

    .line 46
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mSourceHint:Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 292
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    .line 293
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mName:Ljava/lang/String;

    .line 294
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mInfo:Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mInfo:Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object v0
.end method

.method private final assertInAttachmentStage()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempting to attach port while not in attachment stage!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method private final findFieldNamed(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 333
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :catch_0
    move-exception v1

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_0

    .line 337
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->findFieldNamed(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final attachToOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->assertInAttachmentStage()V

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->openOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getQueue()Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;->attachQueue(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V

    .line 89
    return-void
.end method

.method public final bindToField(Ljava/lang/reflect/Field;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->assertInAttachmentStage()V

    .line 139
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort$FieldBinding;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort$FieldBinding;-><init>(Lcom/google/android/libraries/smartburst/filterfw/InputPort;Ljava/lang/reflect/Field;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

    .line 140
    return-void
.end method

.method public final bindToFieldNamed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->findFieldNamed(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 159
    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Attempting to bind to unknown field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToField(Ljava/lang/reflect/Field;)V

    .line 164
    return-void
.end method

.method public final bindToListener(Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->assertInAttachmentStage()V

    .line 119
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

    .line 120
    return-void
.end method

.method final clear()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->clear()V

    .line 320
    :cond_0
    return-void
.end method

.method final conditionsMet()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mWaitForFrame:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFilter()Lcom/google/android/libraries/smartburst/filterfw/Filter;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method final getQueue()Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    return-object v0
.end method

.method public final getSourceHint()Lcom/google/android/libraries/smartburst/filterfw/OutputPort;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mSourceHint:Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    return-object v0
.end method

.method public final getType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getQueue()Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->getType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized hasFrame()Z
    .locals 1

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->canPull()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isAutoPullEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mAutoPullEnabled:Z

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final onOpen(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;)V
    .locals 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    .line 303
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mInfo:Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

    iget-object v1, v1, Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;->type:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;->setReadType(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V

    .line 305
    return-void
.end method

.method public final declared-synchronized peek()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pull frame from closed input port!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->peek()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 6

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot pull frame from closed input port!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 197
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mListener:Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;

    invoke-interface {v1, p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort$FrameListener;->onFrameReceived(Lcom/google/android/libraries/smartburst/filterfw/InputPort;Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->addAutoReleaseFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 204
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getTimestamp()J

    move-result-wide v2

    .line 205
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onPulledFrameWithTimestamp(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method public final setAutoPullEnabled(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mAutoPullEnabled:Z

    .line 173
    return-void
.end method

.method final setQueue(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V
    .locals 1

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueue:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mQueueBuilder:Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    .line 310
    return-void
.end method

.method public final setSourceHint(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mSourceHint:Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 96
    return-void
.end method

.method public final setWaitsForFrame(Z)V
    .locals 0

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mWaitForFrame:Z

    .line 245
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mFilter:Lcom/google/android/libraries/smartburst/filterfw/Filter;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final waitsForFrame()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->mWaitForFrame:Z

    return v0
.end method
