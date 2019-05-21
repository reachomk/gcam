.class public final Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;
.super Lcom/google/android/apps/camera/async/TransformedObservable;
.source "ZoomedCropRegion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/camera/async/TransformedObservable",
        "<",
        "Ljava/lang/Float;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field private final sensorArrayArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/async/Observable;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/async/TransformedObservable;-><init>(Lcom/google/android/apps/camera/async/Observable;)V

    .line 25
    invoke-interface {p2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;->sensorArrayArea:Landroid/graphics/Rect;

    .line 26
    return-void
.end method


# virtual methods
.method protected final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 1031
    iget-object v0, p0, Lcom/android/camera/one/v2/common/zoom/ZoomedCropRegion;->sensorArrayArea:Landroid/graphics/Rect;

    .line 1032
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 1033
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 1034
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1035
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    .line 1036
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v1, v3

    sub-int v6, v2, v0

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    return-object v4
.end method
