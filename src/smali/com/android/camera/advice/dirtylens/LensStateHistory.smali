.class final Lcom/android/camera/advice/dirtylens/LensStateHistory;
.super Ljava/lang/Object;
.source "LensStateHistory.java"


# instance fields
.field private final config:Lcom/android/camera/advice/dirtylens/DirtyLensConfig;

.field private history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

.field private latestImageFakeTime:Ljava/math/BigInteger;

.field private final microBetweenFrames:Ljava/math/BigInteger;

.field private final nativeHistory:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;


# direct methods
.method constructor <init>(Lcom/android/camera/advice/dirtylens/DirtyLensConfig;Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->config:Lcom/android/camera/advice/dirtylens/DirtyLensConfig;

    .line 34
    iput-object p2, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->nativeHistory:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    .line 35
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->latestImageFakeTime:Ljava/math/BigInteger;

    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->secondsToMicrosLong(F)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 38
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->microBetweenFrames:Ljava/math/BigInteger;

    .line 39
    return-void
.end method


# virtual methods
.method public final determineLensCondition$5132IJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOB4EPKM6P9FCHKN4T3PDHIMSSPF8HKN4T3P9HIMSSQGDHQMEQBE4H66ARJJ8DNMSP39EHKMURHR(F)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 1098
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    if-nez v0, :cond_0

    move v0, v1

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    sget v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->DIRTY$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    .line 53
    :goto_1
    return v0

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->latestImageFakeTime:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->microBetweenFrames:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->latestImageFakeTime:Ljava/math/BigInteger;

    .line 1103
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->nativeHistory:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    iget-object v2, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->latestImageFakeTime:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, p1}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->onPhoto(Ljava/math/BigInteger;F)Z

    move-result v0

    .line 1104
    iget-object v2, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    iget-object v3, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->nativeHistory:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    invoke-virtual {v3}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->getScoreHistory()Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 2066
    :cond_1
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    if-nez v0, :cond_2

    move v0, v1

    .line 50
    :goto_2
    if-eqz v0, :cond_6

    .line 51
    sget v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->CLEAN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    goto :goto_1

    .line 2070
    :cond_2
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    invoke-virtual {v0}, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    .line 2071
    invoke-interface {v0}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->size()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2072
    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 2073
    goto :goto_2

    .line 2078
    :cond_3
    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_5

    .line 2079
    invoke-interface {v0, v2}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->getItem(I)F

    move-result v3

    const v4, 0x3ecccccd    # 0.4f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move v0, v1

    .line 2080
    goto :goto_2

    .line 2078
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2083
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .line 53
    :cond_6
    sget v0, Lcom/android/camera/advice/dirtylens/DirtyLensPlugin$LensCondition;->UNKNOWN$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5I7CQB3CKNM8QBIEHSMOPBEECNK8QBIEHSKOPBEED86OTB7D5N28J35DPPK6RRECHKN8QBFDOTG____:I

    goto :goto_1
.end method

.method public final needMoreFrames()Z
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    invoke-virtual {v0}, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    invoke-interface {v0}, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDirtyLensProperty(Lcom/android/camera/advice/dirtylens/DirtyLensProperty;)V
    .locals 2

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    .line 115
    iget-object v1, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->nativeHistory:Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;

    iget-object v0, p0, Lcom/android/camera/advice/dirtylens/LensStateHistory;->history:Lcom/android/camera/advice/dirtylens/DirtyLensProperty;

    invoke-virtual {v0}, Lcom/android/camera/advice/dirtylens/DirtyLensProperty;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/advice/dirtylens/proxy/DirtyLensHistoryProxy;->setScoreHistory(Lcom/android/camera/advice/dirtylens/proxy/FloatDequeProxy;)V

    .line 116
    return-void
.end method
