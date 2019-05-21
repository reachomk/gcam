.class public Lcom/android/camera/stats/SmartBurstMetaData;
.super Ljava/lang/Object;
.source "SmartBurstMetaData.java"


# static fields
.field public static final CAMERA_FEATURE_THREAD_ID:Ljava/lang/String; = "CAMF"

.field public static final FACE_THREAD_ID:Ljava/lang/String; = "FACE"

.field public static final FAST_FEATURE_THREAD_ID:Ljava/lang/String; = "FAST"

.field public static final MOTION_THREAD_ID:Ljava/lang/String; = "MOTN"


# instance fields
.field private final proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

.field private sessionDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;-><init>()V

    iput-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    return-void
.end method

.method private convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;
    .locals 4

    .prologue
    .line 162
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$Statistics;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$Statistics;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Statistics;->min()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$Statistics;->min:F

    .line 164
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Statistics;->max()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$Statistics;->max:F

    .line 165
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Statistics;->mean()D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$Statistics;->mean:F

    .line 1080
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/utils/Statistics;->variance()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 166
    double-to-float v1, v2

    iput v1, v0, Lcom/google/common/logging/nano/eventprotos$Statistics;->stddev:F

    .line 167
    return-object v0
.end method

.method private createThreadStat(Ljava/lang/String;I)Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;
    .locals 2

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 155
    new-instance v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;-><init>()V

    .line 156
    iput-object p1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->threadId:Ljava/lang/String;

    .line 157
    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;->frameCount:I

    .line 158
    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    new-instance v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->captureStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    return-object v0
.end method

.method private getPerformanceStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    new-instance v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->performanceStats:Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    return-object v0
.end method

.method private getProtoArtifactType(Lcom/google/android/libraries/smartburst/artifacts/Artifact;)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 198
    :pswitch_0
    return v0

    .line 192
    :sswitch_0
    const-string v4, "GIF_Action"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "GIF_Summary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a874caf -> :sswitch_0
        0x2415eb -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSummary()Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    new-instance v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    invoke-direct {v1}, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;-><init>()V

    iput-object v1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iget-object v0, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summary:Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    return-object v0
.end method


# virtual methods
.method public extractStatistics(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 6

    .prologue
    .line 87
    new-instance v0, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;-><init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V

    .line 90
    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_COUNT:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatisticsFor(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->EXPOSURE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatisticsFor(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v2

    .line 92
    sget-object v3, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatisticsFor(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v3

    .line 93
    sget-object v4, Lcom/google/android/libraries/smartburst/utils/FeatureType;->PERCEPTUAL_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatisticsFor(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v4

    .line 94
    sget-object v5, Lcom/google/android/libraries/smartburst/utils/FeatureType;->CAMERA_MOTION:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-virtual {v0, v5}, Lcom/google/android/libraries/smartburst/analysis/FeatureTableStats;->getStatisticsFor(Lcom/google/android/libraries/smartburst/utils/FeatureType;)Lcom/google/android/libraries/smartburst/utils/Statistics;

    move-result-object v0

    .line 97
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/camera/stats/SmartBurstMetaData;->convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;

    move-result-object v1

    iput-object v1, v5, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;->faceCount:Lcom/google/common/logging/nano/eventprotos$Statistics;

    .line 98
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/camera/stats/SmartBurstMetaData;->convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;->exposure:Lcom/google/common/logging/nano/eventprotos$Statistics;

    .line 99
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/android/camera/stats/SmartBurstMetaData;->convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;->motionSaliency:Lcom/google/common/logging/nano/eventprotos$Statistics;

    .line 100
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    move-result-object v1

    invoke-direct {p0, v4}, Lcom/android/camera/stats/SmartBurstMetaData;->convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;

    move-result-object v2

    iput-object v2, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;->sharpness:Lcom/google/common/logging/nano/eventprotos$Statistics;

    .line 101
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getCaptureStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/camera/stats/SmartBurstMetaData;->convertStatistics(Lcom/google/android/libraries/smartburst/utils/Statistics;)Lcom/google/common/logging/nano/eventprotos$Statistics;

    move-result-object v0

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstCaptureStats;->cameraMotion:Lcom/google/common/logging/nano/eventprotos$Statistics;

    .line 104
    sget-object v0, Lcom/google/android/libraries/smartburst/utils/FeatureType;->FACE_COUNT:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getAssignmentCount(Lcom/google/android/libraries/smartburst/utils/FeatureType;)I

    move-result v0

    .line 105
    sget-object v1, Lcom/google/android/libraries/smartburst/utils/FeatureType;->EXPOSURE:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-interface {p1, v1}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getAssignmentCount(Lcom/google/android/libraries/smartburst/utils/FeatureType;)I

    move-result v1

    .line 106
    sget-object v2, Lcom/google/android/libraries/smartburst/utils/FeatureType;->MOTION_SALIENCY:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-interface {p1, v2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getAssignmentCount(Lcom/google/android/libraries/smartburst/utils/FeatureType;)I

    move-result v2

    .line 107
    sget-object v3, Lcom/google/android/libraries/smartburst/utils/FeatureType;->PERCEPTUAL_SHARPNESS:Lcom/google/android/libraries/smartburst/utils/FeatureType;

    invoke-interface {p1, v3}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getAssignmentCount(Lcom/google/android/libraries/smartburst/utils/FeatureType;)I

    move-result v3

    .line 110
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const-string v5, "FACE"

    invoke-direct {p0, v5, v0}, Lcom/android/camera/stats/SmartBurstMetaData;->createThreadStat(Ljava/lang/String;I)Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v0, "CAMF"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/stats/SmartBurstMetaData;->createThreadStat(Ljava/lang/String;I)Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v0, "MOTN"

    invoke-direct {p0, v0, v2}, Lcom/android/camera/stats/SmartBurstMetaData;->createThreadStat(Ljava/lang/String;I)Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "FAST"

    invoke-direct {p0, v0, v3}, Lcom/android/camera/stats/SmartBurstMetaData;->createThreadStat(Ljava/lang/String;I)Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getPerformanceStats()Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    .line 117
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    iput-object v0, v1, Lcom/google/common/logging/nano/eventprotos$SmartBurstPerformanceStats;->analysisStats:[Lcom/google/common/logging/nano/eventprotos$SmartBurstThreadStats;

    .line 118
    return-void
.end method

.method public getProto()Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    return-object v0
.end method

.method public getSessionDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->sessionDirectory:Ljava/io/File;

    return-object v0
.end method

.method public setArtifactStack(Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;)V
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;->size()I

    move-result v0

    .line 55
    new-array v2, v0, [Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/ArtifactStack;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    .line 58
    new-instance v4, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    invoke-direct {v4}, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;-><init>()V

    .line 59
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getSourceTimestampsNs()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    iput v5, v4, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->mediaCount:I

    .line 60
    invoke-direct {p0, v0}, Lcom/android/camera/stats/SmartBurstMetaData;->getProtoArtifactType(Lcom/google/android/libraries/smartburst/artifacts/Artifact;)I

    move-result v0

    iput v0, v4, Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;->artifactType:I

    .line 61
    add-int/lit8 v0, v1, 0x1

    aput-object v4, v2, v1

    move v1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iput-object v2, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->generatedArtifacts:[Lcom/google/common/logging/nano/eventprotos$SmartBurstArtifact;

    .line 64
    return-void
.end method

.method public setBasicProperties(FI)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->duration:F

    .line 45
    iget-object v0, p0, Lcom/android/camera/stats/SmartBurstMetaData;->proto:Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;

    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstMetaData;->summaryFrameCount:I

    .line 46
    return-void
.end method

.method public setMaxImageCount(I)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getSummary()Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    move-result-object v0

    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->maxFrameCount:I

    .line 129
    return-void
.end method

.method public setSessionDirectory(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/camera/stats/SmartBurstMetaData;->sessionDirectory:Ljava/io/File;

    .line 136
    return-void
.end method

.method public setSummaryCounts(II)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/camera/stats/SmartBurstMetaData;->getSummary()Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;

    move-result-object v0

    .line 74
    iput p1, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->totalFrameCount:I

    .line 75
    iput p2, v0, Lcom/google/common/logging/nano/eventprotos$SmartBurstSummary;->presentedFrameCount:I

    .line 76
    return-void
.end method
