.class public final Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;
.super Ljava/lang/Object;
.source "MinDistanceScorer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# instance fields
.field private final mDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

.field private final mFrames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mFrames:Ljava/util/HashSet;

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    .line 29
    return-void
.end method


# virtual methods
.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 7

    .prologue
    .line 33
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 34
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mFrames:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 35
    cmp-long v0, v4, p1

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

    invoke-virtual {v0, p1, p2, v4, v5}, Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;->distanceBetween(JJ)F

    move-result v0

    .line 37
    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    :goto_1
    move v1, v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final onFrameDropped(J)V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mFrames:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mFrames:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mFrames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    const-string v0, "MinDistanceScorer[distanceMetric="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/MinDistanceScorer;->mDistanceMetric:Lcom/google/android/libraries/smartburst/similarity/FrameDistanceMetric;

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
