.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "MergeFilter.java"


# static fields
.field public static final MODE_LFU:I = 0x2

.field public static final MODE_LRU:I = 0x1


# instance fields
.field private mMode:I

.field private mPortScores:[J


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mMode:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    .line 38
    return-void
.end method

.method private final initScores()V
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    .line 105
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method private final updateScore(I)V
    .locals 6

    .prologue
    .line 91
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown merge mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    neg-long v2, v2

    aput-wide v2, v0, p1

    .line 97
    :goto_0
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    aget-wide v2, v1, p1

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    aput-wide v2, v0, p1

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "output"

    const/4 v2, 0x2

    .line 50
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherOutputs()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final onInputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setWaitsForFrame(Z)V

    .line 57
    return-void
.end method

.method public final onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 1

    .prologue
    .line 61
    const-string v0, "output"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->attachToOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 62
    return-void
.end method

.method protected final onOpen()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->initScores()V

    .line 67
    return-void
.end method

.method protected final onProcess()V
    .locals 8

    .prologue
    .line 71
    const-wide/high16 v2, -0x8000000000000000L

    .line 72
    const/4 v1, -0x1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v6

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v4, v6

    if-ge v0, v4, :cond_1

    .line 75
    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mPortScores:[J

    aget-wide v4, v4, v0

    .line 77
    cmp-long v7, v4, v2

    if-ltz v7, :cond_0

    move v1, v0

    move-wide v2, v4

    .line 74
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    if-ltz v1, :cond_2

    .line 84
    aget-object v0, v6, v1

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 85
    const-string v2, "output"

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 86
    invoke-direct {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->updateScore(I)V

    .line 88
    :cond_2
    return-void
.end method

.method public final setMergeMode(I)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot update merge mode while running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/MergeFilter;->mMode:I

    .line 45
    return-void
.end method
