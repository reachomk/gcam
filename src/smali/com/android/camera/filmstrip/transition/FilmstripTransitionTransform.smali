.class public final Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;
.super Ljava/lang/Object;
.source "FilmstripTransitionTransform.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final beginBackgroundAlpha:F

.field private final beginRadius:F

.field private final beginScale:F

.field private final beginTranslation:Landroid/graphics/PointF;

.field private final endBackgroundAlpha:F

.field private final endRadius:F

.field private final endScale:F

.field private final endTranslation:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(FFLandroid/graphics/PointF;Landroid/graphics/PointF;FFFF)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginScale:F

    .line 66
    iput p2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endScale:F

    .line 67
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    .line 68
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endTranslation:Landroid/graphics/PointF;

    .line 69
    iput p5, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginRadius:F

    .line 70
    iput p6, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endRadius:F

    .line 71
    iput p7, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginBackgroundAlpha:F

    .line 72
    iput p8, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endBackgroundAlpha:F

    .line 73
    return-void
.end method


# virtual methods
.method public final getBackgroundAlpha(F)F
    .locals 3

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginBackgroundAlpha:F

    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endBackgroundAlpha:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginBackgroundAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getBeginRadius()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginRadius:F

    return v0
.end method

.method public final getBeginScale()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginScale:F

    return v0
.end method

.method public final getBeginTranslation()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getRadius(F)F
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginRadius:F

    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endRadius:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginRadius:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getScale(F)F
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginScale:F

    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endScale:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public final getTranslation(F)Landroid/graphics/PointF;
    .locals 5

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endTranslation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endTranslation:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginScale:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endScale:F

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2a

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, " scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginTranslation:Landroid/graphics/PointF;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endTranslation:Landroid/graphics/PointF;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, ", translation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginRadius:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endRadius:F

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, ", radius: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget v1, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->beginBackgroundAlpha:F

    iget v2, p0, Lcom/android/camera/filmstrip/transition/FilmstripTransitionTransform;->endBackgroundAlpha:F

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, ", bgAlpha: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
