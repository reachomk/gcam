.class public final Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;
.super Lcom/google/android/libraries/smartburst/utils/FrameScore;
.source "FloatFrameScore.java"


# instance fields
.field private final mScore:F


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/utils/FrameScore;-><init>(J)V

    .line 24
    iput p3, p0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->mScore:F

    .line 25
    return-void
.end method

.method private compareTo(Lcom/google/android/libraries/smartburst/utils/FrameScore;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;

    .line 1028
    iget v1, p1, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->mScore:F

    .line 63
    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->mScore:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 64
    const/4 v0, -0x1

    goto :goto_0

    .line 66
    :cond_2
    iget v2, p0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->mScore:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_0

    .line 67
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/FrameScore;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->compareTo(Lcom/google/android/libraries/smartburst/utils/FrameScore;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    instance-of v2, p1, Lcom/google/android/libraries/smartburst/utils/FrameScore;

    if-eqz v2, :cond_0

    .line 54
    check-cast p1, Lcom/google/android/libraries/smartburst/utils/FrameScore;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->compareTo(Lcom/google/android/libraries/smartburst/utils/FrameScore;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final toFloat()F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/google/android/libraries/smartburst/utils/FloatFrameScore;->mScore:F

    return v0
.end method
