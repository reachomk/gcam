.class final Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;
.super Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;
.source "GridLinesUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/gridlines/view/GridLinesUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleMultiplierLineSetData"
.end annotation


# instance fields
.field private final multipliers:[F


# direct methods
.method public constructor <init>([FZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 338
    invoke-direct {p0, v1, p2, p3}, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$LineSetData;-><init>(ZZZ)V

    .line 339
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    .line 340
    if-nez p2, :cond_0

    array-length v0, p1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 341
    return-void

    :cond_2
    move v0, v1

    .line 340
    goto :goto_0
.end method


# virtual methods
.method public final setBounds(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    iget-boolean v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->shouldDrawCenterLines:Z

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->leftPos:I

    .line 347
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->rightPos:I

    .line 349
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->topPos:I

    .line 350
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->bottomPos:I

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->leftPos:I

    .line 353
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->centerVerticalPos:I

    .line 354
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->rightPos:I

    .line 356
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->topPos:I

    .line 357
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v3

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->centerHorizontalPos:I

    .line 358
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->multipliers:[F

    aget v1, v1, v4

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/camera/gridlines/view/GridLinesUi$SimpleMultiplierLineSetData;->bottomPos:I

    goto :goto_0
.end method
