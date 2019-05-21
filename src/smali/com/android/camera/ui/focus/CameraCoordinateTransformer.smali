.class public final Lcom/android/camera/ui/focus/CameraCoordinateTransformer;
.super Ljava/lang/Object;
.source "CameraCoordinateTransformer.java"


# static fields
.field private static final CAMERA_DRIVER_RECT:Landroid/graphics/RectF;


# instance fields
.field private final cameraToPreviewTransform:Landroid/graphics/Matrix;

.field private final previewToCameraTransform:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    const/high16 v1, -0x3b860000    # -1000.0f

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(ZILandroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "previewRect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2068
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 2071
    if-eqz p1, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 2075
    int-to-float v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2078
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2079
    sget-object v1, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->CAMERA_DRIVER_RECT:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p3, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 2082
    invoke-virtual {v2, v0, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 36
    iput-object v2, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->cameraToPreviewTransform:Landroid/graphics/Matrix;

    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->cameraToPreviewTransform:Landroid/graphics/Matrix;

    .line 2129
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2130
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 37
    iput-object v1, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->previewToCameraTransform:Landroid/graphics/Matrix;

    .line 38
    return-void

    :cond_2
    move v0, v1

    .line 2071
    goto :goto_1
.end method

.method public static prepareLegacyFaceToPreview(Landroid/graphics/Matrix;ZILcom/google/android/apps/camera/util/layout/Orientation;II)V
    .locals 5

    .prologue
    const/high16 v4, 0x44fa0000    # 2000.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 108
    invoke-virtual {p0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 111
    invoke-virtual {p3}, Lcom/google/android/apps/camera/util/layout/Orientation;->getCcwDegrees()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 114
    sget-object v2, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_0:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-eq p3, v2, :cond_0

    sget-object v2, Lcom/google/android/apps/camera/util/layout/Orientation;->CLOCKWISE_180:Lcom/google/android/apps/camera/util/layout/Orientation;

    if-ne p3, v2, :cond_2

    .line 115
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    :goto_1
    int-to-float v0, p4

    div-float/2addr v0, v4

    int-to-float v1, p5

    div-float/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    int-to-float v0, p4

    div-float/2addr v0, v3

    int-to-float v1, p5

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 126
    return-void

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/android/camera/ui/focus/CameraCoordinateTransformer;->previewToCameraTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 63
    return-object v0
.end method
