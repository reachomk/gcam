.class public Lcom/google/android/apps/camera/evcomp/EvCompView;
.super Landroid/view/View;
.source "EvCompView.java"


# instance fields
.field private dashLengthPx:F

.field private drawAffordance:Z

.field private drawLeftMarker:Z

.field private drawMarker:Z

.field private drawRuler:Z

.field private exposureValue:F

.field private leftMarkerScale:F

.field private markerPositionFraction:F

.field private final rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->dashLengthPx:F

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawRuler:Z

    if-eqz v0, :cond_2

    .line 53
    iget-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawAffordance:Z

    if-eqz v0, :cond_4

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawAffordanceDots(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawRulerSun(Landroid/graphics/Canvas;)V

    .line 61
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawMarker:Z

    if-eqz v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->markerPositionFraction:F

    invoke-virtual {v0, p1, v1, v5}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawRulerMarker(Landroid/graphics/Canvas;FZ)V

    .line 64
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawLeftMarker:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->markerPositionFraction:F

    iget v3, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->leftMarkerScale:F

    iget v4, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->exposureValue:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawRulerLeftMarker(Landroid/graphics/Canvas;FFFZ)V

    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawRulerDots(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->dashLengthPx:F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->drawRulerDashes(Landroid/graphics/Canvas;F)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public final setDashLengthPx(F)V
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->dashLengthPx:F

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 110
    return-void
.end method

.method public final setDrawAffordance(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawAffordance:Z

    .line 83
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 84
    return-void
.end method

.method public final setDrawLeftMarker(F)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawLeftMarker:Z

    .line 100
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->leftMarkerScale:F

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 102
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setDrawMarker(Z)V
    .locals 0

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawMarker:Z

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 93
    return-void
.end method

.method public final setDrawRuler(Z)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->drawRuler:Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 76
    return-void
.end method

.method public final setExposure(F)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->exposureValue:F

    .line 131
    return-void
.end method

.method public final setExposureSettings(IIF)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->rulerDrawer:Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/camera/evcomp/EvCompRulerDrawer;->setExposureSettings(IIF)V

    .line 141
    return-void
.end method

.method public final setMarkerPosition(F)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "marker position must be in range [0,1] was: %s"

    .line 119
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 118
    invoke-static {v0, v3, v4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 120
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :goto_1
    const-string v0, "marker position must be in range [0,1] was: %s"

    .line 121
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 120
    invoke-static {v1, v0, v2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 122
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompView;->markerPositionFraction:F

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    .line 124
    return-void

    :cond_0
    move v0, v2

    .line 118
    goto :goto_0

    :cond_1
    move v1, v2

    .line 120
    goto :goto_1
.end method
