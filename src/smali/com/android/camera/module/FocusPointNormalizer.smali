.class public final Lcom/android/camera/module/FocusPointNormalizer;
.super Ljava/lang/Object;
.source "FocusPointNormalizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "focusPtNormalizer"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/FocusPointNormalizer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/burst/OrientationLockController;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/camera/module/FocusPointNormalizer;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    .line 21
    return-void
.end method

.method private static clamp(F)F
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public final normalize(Landroid/graphics/Point;Landroid/graphics/RectF;Lcom/android/camera/one/OneCamera$Facing;)Landroid/graphics/PointF;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 34
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_1

    .line 35
    :cond_0
    sget-object v0, Lcom/android/camera/module/FocusPointNormalizer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Negative focus point: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 38
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/camera/module/FocusPointNormalizer;->clamp(F)F

    move-result v1

    aput v1, v0, v4

    .line 39
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/camera/module/FocusPointNormalizer;->clamp(F)F

    move-result v1

    aput v1, v0, v6

    .line 44
    iget-object v1, p0, Lcom/android/camera/module/FocusPointNormalizer;->orientationManager$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELQ6IR1FDHGNIRRLEGNKUSJ9CLN78OBKD5NMSJB1DPGMEPBI7C______:Lcom/android/camera/burst/OrientationLockController;

    invoke-interface {v1}, Lcom/android/camera/burst/OrientationLockController;->uiOrientation()Lcom/google/android/apps/camera/util/layout/Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/util/layout/Orientation;->getCcwDegrees()I

    move-result v1

    .line 45
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    int-to-float v1, v1

    invoke-virtual {v2, v1, v5, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 47
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 50
    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v1, :cond_2

    .line 51
    const/high16 v1, 0x3f800000    # 1.0f

    aget v2, v0, v4

    sub-float/2addr v1, v2

    aput v1, v0, v4

    .line 54
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    aget v2, v0, v4

    aget v0, v0, v6

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method
