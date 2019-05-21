.class public Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "SelectionFilter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INPUT_PORT_FRAME:Ljava/lang/String; = "frame"

.field private static final OUTPUT_PORT_FRAME:Ljava/lang/String; = "frame"


# instance fields
.field private mFrameFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->mFrameFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    .line 31
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 35
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "frame"

    .line 36
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "frame"

    .line 37
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->attachToOutputPort(Lcom/google/android/libraries/smartburst/filterfw/OutputPort;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->mFrameFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No FrameFilter set on SelectionFilter!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 6

    .prologue
    .line 63
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getTimestamp()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->mFrameFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->getTimestamp()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/smartburst/selection/FrameFilter;->acceptFrameAt(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    const-string v1, "frame"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 69
    :cond_1
    return-void
.end method

.method public setFrameFilter(Lcom/google/android/libraries/smartburst/selection/FrameFilter;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/SelectionFilter;->mFrameFilter:Lcom/google/android/libraries/smartburst/selection/FrameFilter;

    .line 50
    return-void
.end method
