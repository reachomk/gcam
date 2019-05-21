.class public final Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;
.super Ljava/lang/Object;
.source "TimestampGapScorer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# instance fields
.field private final mFrameRate:F

.field private final mNormalizer:F

.field private final mTimestamps:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-direct {p0, v0}, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;-><init>(F)V

    .line 51
    return-void
.end method

.method private constructor <init>(F)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1351
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    .line 59
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mFrameRate:F

    .line 60
    const v0, 0x523a43b7    # 1.99999996E11f

    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mFrameRate:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mNormalizer:F

    .line 61
    return-void
.end method


# virtual methods
.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 73
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, p1, v6

    move v0, v2

    .line 83
    :goto_1
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 87
    :goto_2
    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    .line 97
    :goto_3
    return-object v0

    :cond_0
    move v0, v3

    .line 70
    goto :goto_0

    .line 91
    :cond_1
    add-long/2addr v2, v6

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 97
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    long-to-float v1, v2

    iget v2, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mNormalizer:F

    div-float/2addr v1, v2

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    goto :goto_3

    :cond_2
    move-wide v2, v4

    goto :goto_2

    :cond_3
    move v0, v3

    move-wide v6, v4

    goto :goto_1
.end method

.method public final onFrameDropped(J)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mTimestamps:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 113
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "TimestampGapScorer[rate="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/TimestampGapScorer;->mFrameRate:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
