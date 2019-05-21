.class public final Lcom/android/camera/ui/motion/LinearScale;
.super Ljava/lang/Object;
.source "LinearScale.java"


# instance fields
.field private final domainA:F

.field private final domainB:F

.field private final rangeA:F

.field private final rangeB:F

.field private final scale:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    .line 16
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    .line 17
    iput p3, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeA:F

    .line 18
    iput p4, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeB:F

    .line 21
    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeB:F

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeA:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    iget v3, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/motion/LinearScale;->scale:F

    .line 23
    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0
.end method


# virtual methods
.method public final clamp(F)F
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 30
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0
.end method

.method public final scale(F)F
    .locals 3

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->scale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/ui/motion/LinearScale;->domainA:F

    iget v1, p0, Lcom/android/camera/ui/motion/LinearScale;->domainB:F

    iget v2, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeA:F

    iget v3, p0, Lcom/android/camera/ui/motion/LinearScale;->rangeB:F

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x71

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "LinearScale{mDomainA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mDomainB="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangeB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
