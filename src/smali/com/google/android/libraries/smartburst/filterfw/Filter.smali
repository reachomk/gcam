.class public abstract Lcom/google/android/libraries/smartburst/filterfw/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterfw/Filter$State;
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x4b

.field public static final PRIORITY_LOW:I = 0x19

.field public static final PRIORITY_NORMAL:I = 0x32

.field private static final REQUEST_FLAG_CLOSE:I = 0x1

.field private static final REQUEST_FLAG_NONE:I


# instance fields
.field private mAutoReleaseFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

.field private mConnectedInputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/InputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

.field private mConnectedOutputPorts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/OutputPort;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

.field private mCurrentTimestamp:J

.field private mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

.field private mIsActive:Z

.field private mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastScheduleTime:J

.field private mMinimumAvailableInputs:I

.field private mMinimumAvailableOutputs:I

.field private mName:Ljava/lang/String;

.field private mRequests:I

.field private mScheduleCount:I

.field private final mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    invoke-direct {v0, v4}, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;-><init>(Lcom/google/android/libraries/smartburst/filterfw/Filter$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    .line 62
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    .line 64
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableInputs:I

    .line 65
    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableOutputs:I

    .line 67
    iput v2, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mScheduleCount:I

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mLastScheduleTime:J

    .line 70
    iput-boolean v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    .line 78
    iput-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    .line 79
    iput-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mAutoReleaseFrames:Ljava/util/ArrayList;

    .line 95
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mName:Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    .line 97
    return-void
.end method

.method private assertIsPaused()V
    .locals 2

    .prologue
    .line 779
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->current()Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    move-result-object v0

    .line 780
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to modify filter state while runner is executing. Please pause or stop the runner first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    return-void
.end method

.method private autoPullInputs()V
    .locals 3

    .prologue
    .line 735
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 736
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    aget-object v1, v1, v0

    .line 737
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->isAutoPullEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 735
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_1
    return-void
.end method

.method private autoReleaseFrames()V
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mAutoReleaseFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mAutoReleaseFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 745
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 748
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mAutoReleaseFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 749
    return-void
.end method

.method public static isAvailable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;->sharedFactory()Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/smartburst/filterfw/FilterFactory;->isFilterAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private newInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    .line 753
    if-nez v0, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->getInputPortInfo(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

    move-result-object v1

    .line 755
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;-><init>(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;)V

    .line 756
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    :cond_0
    return-object v0
.end method

.method private newOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 763
    if-nez v0, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->getOutputPortInfo(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;

    move-result-object v1

    .line 765
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;-><init>(Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Signature$PortInfo;)V

    .line 766
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :cond_0
    return-object v0
.end method

.method private processRequests()V
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->performClose()V

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    .line 776
    :cond_0
    return-void
.end method

.method private updatePortArrays()V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 790
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    .line 791
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 792
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->assertIsPaused()V

    .line 162
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    .line 165
    :cond_0
    return-void
.end method

.method final addAutoReleaseFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mAutoReleaseFrames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    return-void
.end method

.method protected canSchedule()Z
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->inSchedulableState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->inputConditionsMet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->outputConditionsMet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final connect(Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/Filter;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x43

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to connect already connected output port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 580
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x42

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Attempting to connect already connected input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1
    invoke-direct {p2, p3}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->newInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    .line 586
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->newOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 587
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->setTarget(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V

    .line 588
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setSourceHint(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 591
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onInputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V

    .line 592
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onOutputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 595
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->updatePortArrays()V

    .line 596
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->assertIsPaused()V

    .line 175
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    .line 178
    :cond_0
    return-void
.end method

.method protected final enterSleepState()V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 542
    return-void
.end method

.method final execute()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 616
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 617
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->autoPullInputs()V

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mLastScheduleTime:J

    .line 619
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onPrepare()V

    .line 621
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    if-ne v0, v4, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->openPorts()V

    .line 625
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onOpen()V

    .line 626
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    if-ne v0, v5, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onProcess()V

    .line 630
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    if-eqz v0, :cond_2

    .line 631
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->processRequests()V

    .line 634
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->autoReleaseFrames()V

    .line 636
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mScheduleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mScheduleCount:I

    .line 637
    return-void

    .line 634
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    return-object v0
.end method

.method final getConnectedInputPortMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/InputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPorts:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getConnectedInputPorts()[Lcom/google/android/libraries/smartburst/filterfw/InputPort;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    return-object v0
.end method

.method public final getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    return-object v0
.end method

.method final getConnectedOutputPortMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/smartburst/filterfw/OutputPort;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    return-object v0
.end method

.method public getContext()Lcom/google/android/libraries/smartburst/filterfw/MffContext;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mContext:Lcom/google/android/libraries/smartburst/filterfw/MffContext;

    return-object v0
.end method

.method final getCurrentTimestamp()J
    .locals 2

    .prologue
    .line 697
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    return-wide v0
.end method

.method protected final getFrameManager()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->getFrameManager()Lcom/google/android/libraries/smartburst/filterfw/FrameManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getLastScheduleTime()J
    .locals 2

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mLastScheduleTime:J

    return-wide v0
.end method

.method protected final getMinimumAvailableInputs()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableInputs:I

    return v0
.end method

.method protected final getMinimumAvailableOutputs()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableOutputs:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method final getScheduleCount()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mScheduleCount:I

    return v0
.end method

.method public getSchedulePriority()I
    .locals 1

    .prologue
    .line 427
    const/16 v0, 0x32

    return v0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    return-object v0
.end method

.method protected inSchedulableState()Z
    .locals 2

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->check(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected inputConditionsMet()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    move v2, v1

    .line 350
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->conditionsMet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_1
    return v1

    .line 353
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedInputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->hasFrame()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    add-int/lit8 v2, v2, 0x1

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableInputs:I

    if-lt v2, v0, :cond_0

    .line 361
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method final insertIntoFilterGraph(Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    .line 674
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->updatePortArrays()V

    .line 675
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsActive:Z

    return v0
.end method

.method public final isOpen()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->check(I)Z

    move-result v0

    return v0
.end method

.method protected final isOpenGLSupported()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isOpenGLSupported()Z

    move-result v0

    return v0
.end method

.method protected final isRunning()Z
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    .line 448
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 447
    goto :goto_0
.end method

.method final isSleeping()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onClose()V
    .locals 0

    .prologue
    .line 325
    return-void
.end method

.method protected onInputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method protected onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method protected onOpen()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method protected onOutputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method protected onOutputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method protected onPrepare()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected abstract onProcess()V
.end method

.method final onPulledFrameWithTimestamp(J)V
    .locals 5

    .prologue
    .line 701
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 702
    :cond_0
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    .line 704
    :cond_1
    return-void
.end method

.method protected onTearDown()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method final openOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V
    .locals 9

    .prologue
    .line 707
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getQueue()Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 709
    :try_start_0
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;-><init>()V

    .line 710
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getTarget()Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    .line 711
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->onOpen(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;)V

    .line 712
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->onOpen(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;)V

    .line 713
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getFilter()Lcom/google/android/libraries/smartburst/filterfw/Filter;

    move-result-object v2

    .line 714
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mName:Ljava/lang/String;

    .line 715
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x8

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameQueue$Builder;->build(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;

    move-result-object v0

    .line 717
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->setQueue(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V

    .line 718
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setQueue(Lcom/google/android/libraries/smartburst/filterfw/FrameQueue;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Could not open output port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method final openPorts()V
    .locals 2

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPorts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    .line 688
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->openOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    goto :goto_0

    .line 690
    :cond_0
    return-void
.end method

.method protected outputConditionsMet()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    move v2, v1

    .line 376
    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 377
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->conditionsMet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 387
    :cond_0
    :goto_1
    return v1

    .line 379
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mConnectedOutputPortArray:[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    add-int/lit8 v2, v2, 0x1

    .line 376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableOutputs:I

    if-lt v2, v0, :cond_0

    .line 387
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method final performClose()V
    .locals 4

    .prologue
    .line 640
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onClose()V

    .line 643
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 644
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 645
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mCurrentTimestamp:J

    .line 647
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final performPreparation(Ljava/lang/Runnable;)Z
    .locals 3

    .prologue
    .line 459
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 461
    const/4 v0, 0x0

    monitor-exit v1

    .line 464
    :goto_0
    return v0

    .line 463
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 464
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final performTearDown()V
    .locals 5

    .prologue
    const/4 v3, 0x5

    .line 660
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 661
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 662
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Attempting to tear-down filter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " which is in an open state!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 664
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onTearDown()V

    .line 667
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x5

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 669
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method final prepareOnly()V
    .locals 3

    .prologue
    .line 607
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 608
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onPrepare()V

    .line 610
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 612
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final requestClose()V
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mRequests:I

    .line 481
    return-void
.end method

.method final resetScheduleCount()V
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mScheduleCount:I

    .line 683
    return-void
.end method

.method protected final setMinimumAvailableInputs(I)V
    .locals 0

    .prologue
    .line 496
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableInputs:I

    .line 497
    return-void
.end method

.method protected final setMinimumAvailableOutputs(I)V
    .locals 0

    .prologue
    .line 522
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mMinimumAvailableOutputs:I

    .line 523
    return-void
.end method

.method final softReset()V
    .locals 3

    .prologue
    .line 651
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    monitor-enter v1

    .line 652
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->performClose()V

    .line 653
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    iget v0, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mState:Lcom/google/android/libraries/smartburst/filterfw/Filter$State;

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/libraries/smartburst/filterfw/Filter$State;->current:I

    .line 656
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final wakeUp()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mIsSleeping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/Filter;->mFilterGraph:Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;

    iget-object v0, v0, Lcom/google/android/libraries/smartburst/filterfw/FilterGraph;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;->signalWakeUp()V

    .line 555
    :cond_0
    return-void
.end method
