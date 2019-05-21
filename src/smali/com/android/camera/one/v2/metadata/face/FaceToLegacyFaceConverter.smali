.class public final Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;
.super Ljava/lang/Object;
.source "FaceToLegacyFaceConverter.java"


# instance fields
.field private final mapDst:Landroid/graphics/RectF;

.field private final mapSrc:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Face2LegacyFaceConv"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapSrc:Landroid/graphics/RectF;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapDst:Landroid/graphics/RectF;

    return-void
.end method

.method public static toTransformMatrix(Landroid/graphics/RectF;II)Landroid/graphics/Matrix;
    .locals 5

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 74
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 76
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 77
    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v3, p2

    div-float v3, v1, v3

    .line 81
    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 83
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    .line 89
    :goto_0
    int-to-float v1, v1

    div-float v1, v4, v1

    .line 90
    int-to-float v0, v0

    div-float v0, v4, v0

    .line 91
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 93
    return-object v2

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    .line 86
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final toLegacyFace(Landroid/graphics/Matrix;Landroid/hardware/camera2/params/Face;)Landroid/hardware/Camera$Face;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    new-instance v0, Landroid/hardware/Camera$Face;

    invoke-direct {v0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 106
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    iput v1, v0, Landroid/hardware/Camera$Face;->id:I

    .line 108
    new-array v1, v2, [F

    .line 109
    new-array v2, v2, [F

    .line 111
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v1, v6

    .line 113
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v1, v7

    .line 114
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 115
    new-instance v3, Landroid/graphics/Point;

    aget v4, v2, v6

    float-to-int v4, v4

    aget v5, v2, v7

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Landroid/hardware/Camera$Face;->leftEye:Landroid/graphics/Point;

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 119
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v1, v6

    .line 120
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v1, v7

    .line 121
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 122
    new-instance v3, Landroid/graphics/Point;

    aget v4, v2, v6

    float-to-int v4, v4

    aget v5, v2, v7

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Landroid/hardware/Camera$Face;->rightEye:Landroid/graphics/Point;

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v1, v6

    .line 127
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v1, v7

    .line 128
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 129
    new-instance v1, Landroid/graphics/Point;

    aget v3, v2, v6

    float-to-int v3, v3

    aget v2, v2, v7

    float-to-int v2, v2

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/hardware/Camera$Face;->mouth:Landroid/graphics/Point;

    .line 132
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v1

    iput v1, v0, Landroid/hardware/Camera$Face;->score:I

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapSrc:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 136
    iget-object v1, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapDst:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapSrc:Landroid/graphics/RectF;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 137
    iget-object v1, p0, Lcom/android/camera/one/v2/metadata/face/FaceToLegacyFaceConverter;->mapDst:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 139
    return-object v0
.end method
