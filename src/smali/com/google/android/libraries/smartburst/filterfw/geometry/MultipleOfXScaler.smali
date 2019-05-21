.class public Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;
.super Ljava/lang/Object;
.source "MultipleOfXScaler.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;


# instance fields
.field private final mAnotherScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

.field private final mMultipleOfX:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/geometry/IdentityScaler;

    invoke-direct {v0}, Lcom/google/android/libraries/smartburst/filterfw/geometry/IdentityScaler;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;-><init>(Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;I)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-gtz p2, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "multipleOfX must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    if-nez p1, :cond_1

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "anotherScaler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;->mMultipleOfX:I

    .line 40
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;->mAnotherScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    .line 41
    return-void
.end method

.method private scaleMaxDimension(III)[I
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 63
    if-gtz p3, :cond_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "multipleOfX must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    if-eq p3, v3, :cond_1

    rem-int v0, p1, p3

    if-nez v0, :cond_2

    .line 68
    :cond_1
    new-array v0, v2, [I

    aput p1, v0, v4

    aput p2, v0, v3

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_2
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 71
    new-array v0, v2, [I

    mul-int v2, v1, p3

    aput v2, v0, v4

    int-to-float v1, v1

    int-to-float v2, p3

    mul-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 72
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public scale(II)[I
    .locals 3

    .prologue
    .line 82
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "width and height must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;->mAnotherScaler:Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;->scale(II)[I

    move-result-object v0

    .line 87
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;->mMultipleOfX:I

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/geometry/MultipleOfXScaler;->scaleMaxDimension(III)[I

    move-result-object v0

    return-object v0
.end method
