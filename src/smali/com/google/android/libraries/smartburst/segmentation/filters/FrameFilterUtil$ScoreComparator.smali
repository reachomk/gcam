.class final Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;
.super Ljava/lang/Object;
.source "FrameFilterUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 51
    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    .line 1055
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    .line 1056
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v1

    .line 1057
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 40
    return v0
.end method
