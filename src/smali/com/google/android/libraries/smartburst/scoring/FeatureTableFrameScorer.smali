.class public abstract Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;
.super Ljava/lang/Object;
.source "FeatureTableFrameScorer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# instance fields
.field private final mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/buffers/FeatureTable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    .line 29
    return-void
.end method


# virtual methods
.method public final getFeatureTable()Lcom/google/android/libraries/smartburst/buffers/FeatureTable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    return-object v0
.end method

.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;->mFeatureTable:Lcom/google/android/libraries/smartburst/buffers/FeatureTable;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/buffers/FeatureTable;->getRowForTimestamp(J)Lcom/google/android/libraries/smartburst/buffers/FeatureRow;

    move-result-object v0

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/smartburst/scoring/FeatureTableFrameScorer;->scoreFeatureRow(JLcom/google/android/libraries/smartburst/buffers/FeatureRow;)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final reset()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public abstract scoreFeatureRow(JLcom/google/android/libraries/smartburst/buffers/FeatureRow;)Lcom/google/android/libraries/smartburst/utils/FrameScore;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "FeatureTableFrameScorer"

    return-object v0
.end method
