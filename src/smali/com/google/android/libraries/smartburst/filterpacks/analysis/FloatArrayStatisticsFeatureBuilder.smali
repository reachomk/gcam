.class public Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FloatArrayStatisticsFeatureBuilder.java"


# static fields
.field private static final PORT_FEATURE:Ljava/lang/String; = "feature"

.field private static final PORT_FEATURE_TYPE:Ljava/lang/String; = "featureType"

.field private static final PORT_FEATURE_VALUES:Ljava/lang/String; = "featureValues"


# instance fields
.field private mFeatureId:Lcom/google/android/libraries/smartburst/utils/FeatureType;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->mFeatureId:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 37
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 41
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v1, "featureValues"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 43
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "featureType"

    const-class v2, Ljava/lang/String;

    .line 45
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "feature"

    const-class v2, Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 47
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 41
    return-object v0
.end method

.method protected onProcess()V
    .locals 10

    .prologue
    .line 53
    const-string v0, "featureType"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->mFeatureId:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 57
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->mFeatureId:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/FeatureType;->valueOf(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/utils/FeatureType;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->mFeatureId:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    :cond_0
    move-object v1, v0

    .line 63
    const-string v0, "featureValues"

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 66
    array-length v2, v0

    if-nez v2, :cond_1

    .line 67
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Empty distribution."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    invoke-static {v0}, Lcom/google/android/libraries/smartburst/utils/Statistics;->forFloatValues([F)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v0

    .line 71
    const-string v2, "feature"

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/analysis/FloatArrayStatisticsFeatureBuilder;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    .line 72
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameValue()Lcom/google/android/libraries/smartburst/filterfw/FrameValue;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/google/android/libraries/smartburst/utils/Feature;

    .line 1123
    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Statistics;->min()D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Statistics;->max()D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Statistics;->mean()D

    move-result-wide v8

    double-to-float v7, v8

    aput v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/Statistics;->variance()D

    move-result-wide v8

    double-to-float v0, v8

    aput v0, v5, v6

    .line 73
    invoke-direct {v4, v1, v5}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;[F)V

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameValue;->setValue(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 75
    return-void
.end method
