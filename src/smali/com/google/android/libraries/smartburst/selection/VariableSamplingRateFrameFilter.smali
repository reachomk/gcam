.class public final Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;
.super Ljava/lang/Object;
.source "VariableSamplingRateFrameFilter.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/selection/FrameFilter;


# instance fields
.field private mIntervalFromLastSampledNs:J

.field private mLastSampledTimestampNs:J

.field private mLastTimestampNs:J

.field private mModifiedIntervalNs:J

.field private mOriginalIntervalNs:J

.field private final mSamplingRateFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastTimestampNs:J

    .line 70
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mSamplingRateFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 71
    return-void
.end method


# virtual methods
.method public final acceptFrameAt(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 75
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastTimestampNs:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 76
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastTimestampNs:J

    .line 77
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastSampledTimestampNs:J

    .line 80
    :cond_0
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastTimestampNs:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mOriginalIntervalNs:J

    .line 81
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastTimestampNs:J

    .line 83
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mSamplingRateFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 84
    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    .line 87
    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/smartburst/utils/MathUtils;->linearMapToRange(FFFFF)F

    move-result v0

    .line 90
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastSampledTimestampNs:J

    sub-long v2, p1, v2

    .line 93
    iget-wide v4, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mIntervalFromLastSampledNs:J

    long-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mIntervalFromLastSampledNs:J

    .line 95
    const/4 v0, 0x0

    .line 96
    iput-wide v6, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mModifiedIntervalNs:J

    .line 99
    iget-wide v2, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mIntervalFromLastSampledNs:J

    const-wide/32 v4, 0xfe502a

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 100
    iput-wide p1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mLastSampledTimestampNs:J

    .line 101
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mIntervalFromLastSampledNs:J

    iput-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mModifiedIntervalNs:J

    .line 102
    iput-wide v6, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mIntervalFromLastSampledNs:J

    .line 103
    const/4 v0, 0x1

    .line 106
    :cond_1
    return v0
.end method

.method public final getModifiedFrameIntervalNs()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mModifiedIntervalNs:J

    return-wide v0
.end method

.method public final getOriginalFrameIntervalNs()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mOriginalIntervalNs:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    const-string v0, "VariableSamplingRateFrameFilter[range="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/selection/VariableSamplingRateFrameFilter;->mSamplingRateFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
