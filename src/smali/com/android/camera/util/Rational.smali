.class public final Lcom/android/camera/util/Rational;
.super Ljava/lang/Object;
.source "Rational.java"


# instance fields
.field private final denominator:J

.field private final numerator:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/android/camera/util/Rational;->numerator:J

    .line 20
    iput-wide p3, p0, Lcom/android/camera/util/Rational;->denominator:J

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/util/Rational;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget-wide v0, p1, Lcom/android/camera/util/Rational;->numerator:J

    iput-wide v0, p0, Lcom/android/camera/util/Rational;->numerator:J

    .line 28
    iget-wide v0, p1, Lcom/android/camera/util/Rational;->denominator:J

    iput-wide v0, p0, Lcom/android/camera/util/Rational;->denominator:J

    .line 29
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    instance-of v2, p1, Lcom/android/camera/util/Rational;

    if-eqz v2, :cond_0

    .line 62
    check-cast p1, Lcom/android/camera/util/Rational;

    .line 63
    iget-wide v2, p0, Lcom/android/camera/util/Rational;->numerator:J

    iget-wide v4, p1, Lcom/android/camera/util/Rational;->numerator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera/util/Rational;->denominator:J

    iget-wide v4, p1, Lcom/android/camera/util/Rational;->denominator:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final getDenominator()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/camera/util/Rational;->denominator:J

    return-wide v0
.end method

.method public final getNumerator()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/camera/util/Rational;->numerator:J

    return-wide v0
.end method

.method public final toDouble()D
    .locals 4

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/camera/util/Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/camera/util/Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/camera/util/Rational;->numerator:J

    iget-wide v2, p0, Lcom/android/camera/util/Rational;->denominator:J

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
