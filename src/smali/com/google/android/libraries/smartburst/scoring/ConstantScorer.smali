.class public final Lcom/google/android/libraries/smartburst/scoring/ConstantScorer;
.super Ljava/lang/Object;
.source "ConstantScorer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# instance fields
.field private final mConstantScore:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/google/android/libraries/smartburst/scoring/ConstantScorer;->mConstantScore:F

    .line 25
    return-void
.end method


# virtual methods
.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/ConstantScorer;->mConstantScore:F

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public final reset()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "ConstantScorer"

    return-object v0
.end method
