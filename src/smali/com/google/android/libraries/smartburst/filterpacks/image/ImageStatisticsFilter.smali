.class public Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "ImageStatisticsFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/analysis/FeatureTableWriter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCalculator:Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

.field private mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

.field private mNumBlocksX:I

.field private mNumBlocksY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 25
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mCalculator:Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

    .line 27
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mNumBlocksX:I

    .line 28
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mNumBlocksY:I

    .line 29
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 34
    return-void
.end method

.method private writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    new-instance v1, Lcom/google/android/libraries/smartburst/utils/Feature;

    invoke-direct {v1, p3, p4}, Lcom/google/android/libraries/smartburst/utils/Feature;-><init>(Lcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->setFeatureValue(JLcom/google/android/libraries/smartburst/utils/Feature;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 38
    const/16 v0, 0x12d

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "blurredX"

    .line 40
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "blurredY"

    .line 41
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "numBlocksX"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v1, "numBlocksY"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    invoke-static {v2}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numBlocksX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "mNumBlocksX"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "numBlocksY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const-string v0, "mNumBlocksY"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 57
    :cond_1
    return-void
.end method

.method public onOpen()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "No FeatureTable set on ImageStatisticsFilter!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 6

    .prologue
    .line 68
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    .line 69
    const-string v1, "blurredX"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    .line 70
    const-string v2, "blurredY"

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 73
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 74
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 76
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mCalculator:Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

    if-nez v3, :cond_0

    .line 77
    new-instance v3, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mNumBlocksX:I

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mNumBlocksY:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mCalculator:Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mCalculator:Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->extractImageStatistics(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;

    move-result-object v1

    .line 85
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v2

    .line 86
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->PERCEPTUAL_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getPerceptualSharpness()F

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 87
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_GRID_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 88
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMaxBlockPerceptualSharpness()F

    move-result v4

    .line 87
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 89
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMeanGray()F

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 90
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getVarianceGray()F

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 91
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_BLOCK_BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMaxBlockMeanGray()F

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 92
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MIN_BLOCK_BRIGHTNESS_MEAN:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMinBlockMeanGray()F

    move-result v4

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 93
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MAX_BLOCK_BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 94
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMaxBlockVarianceGray()F

    move-result v4

    .line 93
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 95
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MIN_BLOCK_BRIGHTNESS_VARIANCE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    .line 96
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;->getMinBlockVarianceGray()F

    move-result v1

    .line 95
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->writeFeature(JLcom/google/android/libraries/smartburst/utils/FeatureType;F)V

    .line 97
    return-void
.end method

.method public setFeatureTable(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsFilter;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 108
    return-void
.end method
