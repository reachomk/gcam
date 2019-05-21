.class final Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;
.super Ljava/lang/Object;
.source "EvalUtil.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/training/EvalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameScoreLogger"
.end annotation


# instance fields
.field private final mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field private final mKey:Ljava/lang/String;

.field private final mScoreLog:Lcom/google/android/libraries/smartburst/training/ValueLog;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;Ljava/lang/String;Lcom/google/android/libraries/smartburst/training/ValueLog;)V
    .locals 3

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 313
    if-eqz p2, :cond_1

    const-string v1, "_"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mKey:Ljava/lang/String;

    .line 315
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mScoreLog:Lcom/google/android/libraries/smartburst/training/ValueLog;

    .line 316
    return-void

    .line 313
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 5

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mScoreLog:Lcom/google/android/libraries/smartburst/training/ValueLog;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v3

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/google/android/libraries/smartburst/training/ValueLog;->addValueLog(Ljava/lang/String;JF)V

    .line 322
    return-object v0
.end method

.method public final onFrameDropped(J)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    .line 333
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    .line 328
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 338
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/training/EvalUtil$FrameScoreLogger;->mFrameScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
