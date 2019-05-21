.class final Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;
.super Ljava/lang/Object;
.source "PreviewOverlay.java"

# interfaces
.implements Lcom/google/android/apps/camera/viewfindergesturemanager/ViewfinderGestureListener$ScaleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/PreviewOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomProcessor"
.end annotation


# instance fields
.field private centerX:I

.field private centerY:I

.field private currentRatio:F

.field private drawOriginX:I

.field private drawOriginY:I

.field private fingerAngle:D

.field private innerRadius:F

.field private maxRatio:F

.field private outerRadius:F

.field private final paint:Landroid/graphics/Paint;

.field private synthetic this$0:Lcom/android/camera/ui/PreviewOverlay;

.field private visible:Z

.field private final zoomStroke:I


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/PreviewOverlay;)V
    .locals 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const-string v0, "ZoomProcessor"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->visible:Z

    .line 410
    invoke-virtual {p1}, Lcom/android/camera/ui/PreviewOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 411
    const v1, 0x7f0c0128

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->zoomStroke:I

    .line 412
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    .line 413
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->zoomStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 419
    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;FF)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->setupZoom(FF)V

    return-void
.end method

.method private final setupZoom(FF)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 556
    .line 2423
    cmpl-float v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 2425
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    .line 2426
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$000(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2431
    cmpl-float v0, p2, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 2432
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$000(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 2434
    iput p2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    .line 2435
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 558
    return-void

    :cond_0
    move v0, v2

    .line 2423
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2431
    goto :goto_1

    :cond_2
    move v1, v2

    .line 2432
    goto :goto_2
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    .line 455
    iget-boolean v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->visible:Z

    if-nez v0, :cond_0

    .line 492
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 461
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->centerX:I

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->drawOriginX:I

    sub-int v6, v0, v1

    .line 462
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->centerY:I

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->drawOriginY:I

    sub-int v7, v0, v1

    .line 464
    int-to-float v0, v6

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 465
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    int-to-float v0, v7

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 466
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v0, v6

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 467
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    int-to-float v0, v7

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    iget-wide v8, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 468
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 464
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 470
    int-to-float v0, v6

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 471
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    int-to-float v0, v7

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 472
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    int-to-float v0, v6

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 473
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float v3, v0, v3

    int-to-float v0, v7

    iget v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    iget-wide v8, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 474
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 470
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 477
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 478
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    sub-float/2addr v0, v10

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    sub-float/2addr v1, v10

    div-float/2addr v0, v1

    .line 479
    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    iget v3, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    sub-float/2addr v2, v3

    mul-float/2addr v0, v2

    add-float v8, v1, v0

    .line 480
    int-to-float v0, v6

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 481
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    int-to-float v0, v7

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 482
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    int-to-float v0, v6

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 483
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v8

    add-float/2addr v3, v0

    int-to-float v0, v7

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 484
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 480
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 486
    int-to-float v0, v6

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 487
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float v1, v0, v1

    int-to-float v0, v7

    iget v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 488
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    int-to-float v0, v6

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 489
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v8

    sub-float v3, v0, v3

    int-to-float v0, v7

    iget-wide v4, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 490
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 486
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public final onScale(FF)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ea8f5c3    # 0.33f

    .line 496
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    .line 497
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 498
    iput v2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    .line 500
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 501
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->maxRatio:F

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$300(Lcom/android/camera/ui/PreviewOverlay;)Lcom/google/android/apps/camera/async/ConcurrentState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->currentRatio:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 507
    float-to-double v0, p2

    iput-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 509
    return-void
.end method

.method public final onScaleBegin(F)V
    .locals 4

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$500(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    .line 1539
    iget-object v1, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->visible:Z

    .line 1543
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 1544
    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 520
    :cond_2
    float-to-double v0, p1

    iput-wide v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->fingerAngle:D

    .line 521
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    goto :goto_0
.end method

.method public final onScaleEnd()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$500(Lcom/android/camera/ui/PreviewOverlay;)Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;

    move-result-object v0

    .line 1548
    iget-object v1, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->visible:Z

    .line 1552
    iget-object v0, v0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/PreviewOverlay;->access$100(Lcom/android/camera/ui/PreviewOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;

    .line 529
    invoke-interface {v0}, Lcom/android/camera/ui/PreviewOverlay$OnZoomChangedListener;->onZoomEnd()V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->this$0:Lcom/android/camera/ui/PreviewOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/PreviewOverlay;->invalidate()V

    .line 532
    return-void
.end method

.method public final setDrawOrigin(II)V
    .locals 0

    .prologue
    .line 439
    iput p1, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->drawOriginX:I

    .line 440
    iput p2, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->drawOriginY:I

    .line 441
    return-void
.end method

.method public final setPreviewRect(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 445
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->centerX:I

    .line 446
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->centerY:I

    .line 449
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 450
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    .line 451
    iget v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->outerRadius:F

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/PreviewOverlay$ZoomProcessor;->innerRadius:F

    .line 452
    return-void
.end method
