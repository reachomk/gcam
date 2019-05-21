.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "GraphOutputTarget.java"


# instance fields
.field private mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

.field private mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 14
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->any()Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 18
    return-void
.end method


# virtual methods
.method protected canSchedule()Z
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->canSchedule()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "frame"

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherInputs()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public getType()Lcom/google/android/libraries/smartburst/filterfw/FrameType;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    return-object v0
.end method

.method protected onProcess()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->retain()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 53
    return-void
.end method

.method public pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 41
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mFrame:Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setType(Lcom/google/android/libraries/smartburst/filterfw/FrameType;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/base/GraphOutputTarget;->mType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 23
    return-void
.end method
