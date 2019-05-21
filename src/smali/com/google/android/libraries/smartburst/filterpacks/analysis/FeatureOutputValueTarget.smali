.class public Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FeatureOutputValueTarget.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 36
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "feature"

    const/4 v2, 0x2

    const-class v3, Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 41
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherInputs()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Feature table must be set before the filter is run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 6

    .prologue
    .line 56
    const-string v0, "feature"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 59
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getTimestamp()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->setFeatureValue(JLcom/google/android/libraries/smartburst/utils/Feature;)Z

    .line 61
    :cond_0
    return-void
.end method

.method public setFeatureTable(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding listener after graph has started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FeatureOutputValueTarget;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 77
    return-void
.end method
