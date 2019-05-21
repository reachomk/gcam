.class public final Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;
.super Ljava/lang/Object;
.source "PolynomialScoreTransformer.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/scoring/FrameScorer;


# instance fields
.field private final mClampHigh:F

.field private final mClampLow:F

.field private final mExponent:F

.field private final mScale:F

.field private final mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

.field private final mTranslate:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FFF)V
    .locals 7

    .prologue
    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v2, 0x3f800000    # 1.0f

    .line 71
    const/high16 v3, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;-><init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FFFFF)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/smartburst/scoring/FrameScorer;FFFFF)V
    .locals 1

    .prologue
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    .line 49
    iput p2, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mTranslate:F

    .line 50
    iput p3, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScale:F

    .line 51
    iput p4, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mExponent:F

    .line 52
    iput v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampLow:F

    .line 53
    iput v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampHigh:F

    .line 54
    return-void
.end method


# virtual methods
.method public final getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;
    .locals 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->getScoreAt(J)Lcom/google/android/libraries/smartburst/utils/FrameScore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/utils/FrameScore;->toFloat()F

    move-result v0

    .line 77
    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampLow:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 78
    iget v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampLow:F

    .line 80
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampHigh:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 81
    iget v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampHigh:F

    .line 84
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mExponent:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 87
    float-to-double v0, v0

    iget v2, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mExponent:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const/4 v0, 0x0

    .line 93
    :cond_2
    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mTranslate:F

    add-float/2addr v0, v1

    .line 94
    new-instance v1, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;-><init>(JF)V

    return-object v1
.end method

.method public final onFrameDropped(J)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameDropped(J)V

    .line 105
    return-void
.end method

.method public final onFrameInserted(J)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->onFrameInserted(J)V

    .line 100
    return-void
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/scoring/FrameScorer;->reset()V

    .line 110
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 114
    const-string v0, "PolynomialScoreTransformer[scorer="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScorer:Lcom/google/android/libraries/smartburst/scoring/FrameScorer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mTranslate:F

    iget v3, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mScale:F

    iget v4, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mExponent:F

    iget v5, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampLow:F

    iget v6, p0, Lcom/google/android/libraries/smartburst/scoring/PolynomialScoreTransformer;->mClampHigh:F

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x82

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", translate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clampLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clampHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
