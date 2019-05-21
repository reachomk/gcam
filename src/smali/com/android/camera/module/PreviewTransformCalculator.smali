.class public final Lcom/android/camera/module/PreviewTransformCalculator;
.super Ljava/lang/Object;
.source "PreviewTransformCalculator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

.field private previewStreamSize:Lcom/android/camera/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "PviewTransfmCal"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/PreviewTransformCalculator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/burst/OrientationLockController;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/burst/OrientationLockController;Lcom/android/camera/ui/CaptureLayoutHelper;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 28
    iput-object p2, p0, Lcom/android/camera/module/PreviewTransformCalculator;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public final toTransformMatrix(Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->previewStreamSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->previewStreamSize:Lcom/android/camera/util/Size;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/module/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto :goto_0
.end method

.method public final toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;
    .locals 12

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->captureLayoutHelper:Lcom/android/camera/ui/CaptureLayoutHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/CaptureLayoutHelper;->isMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1131
    new-instance v3, Landroid/graphics/RectF;

    .line 1132
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v10, v10, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1137
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 1138
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->isDefaultOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1139
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1142
    :goto_0
    new-instance v4, Landroid/graphics/RectF;

    .line 1143
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v4, v10, v10, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1144
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1146
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1149
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->naturalDeviceOrientation()Lcom/android/camera/util/layout/NaturalOrientation;

    move-result-object v0

    .line 1150
    sget-object v7, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT:Lcom/android/camera/util/layout/NaturalOrientation;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/camera/util/layout/NaturalOrientation;->PORTRAIT_REVERSED:Lcom/android/camera/util/layout/NaturalOrientation;

    if-ne v0, v7, :cond_1

    .line 1154
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1155
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float v7, v0

    invoke-virtual {v6, v10, v10, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1156
    int-to-float v1, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    sub-float/2addr v1, v7

    neg-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v6, v10, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1157
    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    .line 1159
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v5

    .line 1170
    :goto_1
    sget-object v5, Lcom/android/camera/module/PreviewTransformCalculator;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2e

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Creating cropping matrix for full Viewfinder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    new-instance v5, Landroid/graphics/RectF;

    .line 1178
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v7, v1

    .line 1179
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-direct {v5, v10, v10, v7, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1181
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    sub-float/2addr v1, v4

    .line 1182
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v4, v7

    .line 1180
    invoke-virtual {v5, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1184
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1185
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v6, v5, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1189
    iget-object v4, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v4}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v4

    .line 1190
    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1197
    iget-object v4, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v4}, Lcom/android/camera/burst/OrientationLockController;->isDefaultOrientationPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1202
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    move-object v0, v1

    .line 61
    :goto_3
    iput-object p2, p0, Lcom/android/camera/module/PreviewTransformCalculator;->previewStreamSize:Lcom/android/camera/util/Size;

    .line 62
    return-object v0

    .line 1163
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1164
    int-to-float v1, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v6, v10, v10, v1, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1165
    int-to-float v1, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v1, v7

    neg-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v6, v1, v10}, Landroid/graphics/RectF;->offset(FF)V

    .line 1166
    int-to-float v0, v0

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1168
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v5

    goto/16 :goto_1

    :cond_2
    move v11, v2

    move v2, v0

    move v0, v11

    .line 1200
    goto :goto_2

    .line 2066
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    .line 2067
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v2, v10, v10, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2068
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {v3, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2073
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->isDefaultOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2074
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 2078
    :goto_4
    new-instance v1, Landroid/graphics/RectF;

    .line 2079
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v10, v10, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2080
    new-instance v0, Landroid/graphics/PointF;

    .line 2081
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2083
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2084
    iget v1, v3, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v0, v5, v0

    invoke-virtual {v4, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 2088
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 2089
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 2093
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/util/layout/Orientation;->getDegrees()I

    move-result v0

    .line 2094
    int-to-float v0, v0

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v2, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 2104
    iget-object v0, p0, Lcom/android/camera/module/PreviewTransformCalculator;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v0}, Lcom/android/camera/burst/OrientationLockController;->isDefaultOrientationPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2105
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->transpose()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 2110
    :goto_5
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2111
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    .line 2109
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2112
    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2114
    new-instance v2, Landroid/graphics/RectF;

    .line 2116
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    invoke-direct {v2, v10, v10, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2117
    new-instance v0, Landroid/graphics/PointF;

    .line 2118
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2119
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object v0, v1

    .line 59
    goto/16 :goto_3

    :cond_4
    move-object v0, p2

    goto :goto_5

    :cond_5
    move-object v0, p2

    goto/16 :goto_4

    :cond_6
    move-object v0, p2

    goto/16 :goto_0
.end method
