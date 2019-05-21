.class public Lcom/android/camera/widget/RoundedThumbnailView;
.super Landroid/view/View;
.source "RoundedThumbnailView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;,
        Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;,
        Lcom/android/camera/widget/RoundedThumbnailView$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private final borderStrokePaint:Landroid/graphics/Paint;

.field private burstFlashAnimator:Landroid/animation/ValueAnimator;

.field private callback:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/widget/RoundedThumbnailView$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private currentHitStateCircleOpacity:F

.field private currentRevealCircleOpacity:F

.field private currentRippleRingDiameter:F

.field private currentRippleRingOpacity:F

.field private currentRippleRingThickness:F

.field private currentThumbnailDiameter:F

.field private foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private final hitStateCirclePaint:Landroid/graphics/Paint;

.field private final innerStrokeWidth:F

.field private isVisibilityDisabled:Z

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private optionalOnClickListener:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

.field private final revealCirclePaint:Landroid/graphics/Paint;

.field private rippleAnimator:Landroid/animation/ValueAnimator;

.field private final ripplePaint:Landroid/graphics/Paint;

.field private final rippleRingDiameterBegin:F

.field private final rippleRingDiameterEnd:F

.field private final rippleRingThicknessBegin:F

.field private final rippleRingThicknessEnd:F

.field private final smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

.field private thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

.field private final thumbnailShrinkDiameterBegin:F

.field private final thumbnailShrinkDiameterEnd:F

.field private final thumbnailStretchDiameterBegin:F

.field private final thumbnailStretchDiameterEnd:F

.field private final thumbnailTypeIconSize:F

.field private final viewRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "RoundedThumbnail"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 263
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 220
    iput-boolean v9, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    .line 222
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/RoundedThumbnailView$1;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 265
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->callback:Lcom/google/common/base/Optional;

    .line 267
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->optionalOnClickListener:Lcom/google/common/base/Optional;

    .line 270
    invoke-virtual {p0, v8}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c019c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 277
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c019e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c019f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    .line 280
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterBegin:F

    .line 282
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c019d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    .line 283
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailTypeIconSize:F

    .line 287
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    .line 289
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    .line 292
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterBegin:F

    .line 294
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingThicknessBegin:F

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingThicknessEnd:F

    .line 298
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    .line 300
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    .line 301
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 304
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    .line 305
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 306
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    .line 309
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 312
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    .line 313
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c01a0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->innerStrokeWidth:F

    .line 315
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->innerStrokeWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 319
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    new-array v5, v10, [I

    .line 326
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b021d

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v5, v9

    .line 327
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b021e

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    aput v2, v5, v8

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 331
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 333
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-direct {v0, v2, v3, v9}, Lcom/android/camera/widget/RoundedThumbnailView$RoundedThumbnailOutlineProvider;-><init>(FLandroid/graphics/RectF;B)V

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 337
    invoke-virtual {p0, v9}, Lcom/android/camera/widget/RoundedThumbnailView;->setEnabled(Z)V

    .line 338
    sget v0, Lcom/google/android/apps/camera/uiutils/TypedThumbnailBitmap$ThumbnailType;->PLACEHOLDER$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NNAQBLEHKMOSPFAHSN0PB4AHK7ARB2DPGMIR22D5Q6QOBG4HA6GTBDC9N62QBCAHSN0P9R:I

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->getDefaultThumbnail$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTB9ELQ6IR3J5TA7IS35CHA6GTBDC9N62QBC89KN8RB1E0I58Q3LDLH6SOB9DHA7IS357CKKOOBECHP6UQB45TJN4OBGD1KM6SPF89KN8RB1E0TG____(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1574
    sget-object v2, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v3, "setThumbnail"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2363
    iget-boolean v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    if-eqz v2, :cond_0

    .line 2364
    iput-boolean v9, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    .line 2365
    invoke-virtual {p0, v9}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 1581
    :cond_0
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-nez v2, :cond_1

    .line 1583
    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    invoke-static {v2, v6}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->createNonAnimatedRevealRequest(FLjava/lang/String;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 1585
    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v2, v0, v9}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->setThumbnailBitmap(Landroid/graphics/Bitmap;I)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    iput-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 1592
    iput-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2685
    :cond_2
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v2, "runPendingRequestAnimation"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->isAnimationDisabled()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v8

    .line 2688
    :goto_0
    if-eqz v0, :cond_3

    .line 2690
    iput-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2691
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v2, :cond_3

    .line 2692
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2693
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 2694
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 2698
    :cond_3
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2699
    iput-object v6, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2701
    if-nez v0, :cond_7

    .line 2702
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    .line 2704
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentThumbnailDiameter:F

    .line 2705
    iput v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRevealCircleOpacity:F

    .line 2706
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 2708
    :cond_4
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 2709
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 2711
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 342
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->disableVisibilityAndHide()V

    .line 344
    new-instance v0, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    .line 345
    return-void

    :cond_6
    move v0, v9

    .line 2687
    goto :goto_0

    .line 2716
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->clearAnimations()V

    .line 2719
    invoke-virtual {p0, v9}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 2723
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 2726
    new-array v1, v10, [F

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    aput v2, v1, v9

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    aput v2, v1, v8

    .line 2727
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2728
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2729
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2730
    new-instance v2, Lcom/android/camera/widget/RoundedThumbnailView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/RoundedThumbnailView$2;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2746
    new-array v2, v10, [F

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterBegin:F

    aput v3, v2, v9

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    aput v3, v2, v8

    .line 2747
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 2748
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2749
    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2750
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/RoundedThumbnailView$3;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2760
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2761
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v1, v3, v9

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 2762
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$4;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$4;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2776
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2781
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 2784
    new-array v1, v10, [F

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterBegin:F

    aput v2, v1, v9

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    aput v2, v1, v8

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 2785
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2786
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2787
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$5;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$5;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2798
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$6;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$6;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2814
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 2815
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2818
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getAccessibilityString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method static synthetic access$002(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->callback:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingDiameter:F

    return p1
.end method

.method static synthetic access$1102(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingThickness:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/widget/RoundedThumbnailView;)F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingThicknessBegin:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/widget/RoundedThumbnailView;)F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingThicknessEnd:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingOpacity:F

    return p1
.end method

.method static synthetic access$1502(Lcom/android/camera/widget/RoundedThumbnailView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->optionalOnClickListener:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentThumbnailDiameter:F

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/widget/RoundedThumbnailView;F)F
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRevealCircleOpacity:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->processRevealRequests()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/camera/widget/RoundedThumbnailView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/widget/RoundedThumbnailView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final clearAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 654
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 657
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 662
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 665
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 670
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 673
    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    .line 675
    :cond_2
    return-void
.end method

.method private final processRevealRequests()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 890
    :cond_0
    return-void
.end method


# virtual methods
.method public final disableVisibilityAndHide()V
    .locals 1

    .prologue
    .line 357
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 358
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    .line 359
    return-void
.end method

.method public final flashThumbnail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 526
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v1, "flashThumbnail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2822
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v1, "runPendingFlashAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2827
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 2828
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 2831
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 2835
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->clearAnimations()V

    .line 2838
    invoke-virtual {p0, v3}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 2842
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 2845
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    aput v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    .line 2848
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2849
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2850
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 2851
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$7;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$7;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2864
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$8;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$8;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2871
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 530
    return-void
.end method

.method public final getDefaultThumbnail$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUTB9ELQ6IR3J5TA7IS35CHA6GTBDC9N62QBC89KN8RB1E0I58Q3LDLH6SOB9DHA7IS357CKKOOBECHP6UQB45TJN4OBGD1KM6SPF89KN8RB1E0TG____(I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 602
    sget-object v1, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v2, "showDefaultThumbnail"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iget v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    float-to-int v1, v1

    .line 604
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 605
    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 607
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01cd

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 609
    add-int/lit8 v3, p1, -0x1

    packed-switch v3, :pswitch_data_0

    .line 625
    :goto_0
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 626
    if-eqz v0, :cond_0

    .line 630
    int-to-float v1, v1

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailTypeIconSize:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    .line 632
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailTypeIconSize:F

    float-to-int v4, v4

    add-int/2addr v4, v1

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailTypeIconSize:F

    float-to-int v5, v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 634
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 636
    :cond_0
    return-object v2

    .line 611
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200bb

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 614
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200bf

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 617
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02012f

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02011a

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final getRippleRingMaxDiameterDp()F
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    return v0
.end method

.method public final getThumbnailFinalDiameter()F
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 554
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 555
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onAttachedToWindow()V

    .line 556
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 560
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->smoothRotator:Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/uiutils/SmoothOrientationRotation;->onConfigurationChanged()V

    .line 562
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 378
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 381
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 383
    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    .line 384
    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    .line 386
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 389
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v4}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 391
    if-eqz v4, :cond_0

    .line 393
    div-float v5, v3, v2

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 396
    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 397
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v0, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 400
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->innerStrokeWidth:F

    div-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v4, :cond_3

    .line 412
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingThickness:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 413
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingOpacity:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 416
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingThickness:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 419
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRippleRingDiameter:F

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->ripplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 420
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 424
    :cond_1
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentThumbnailDiameter:F

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v4, v5

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 427
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 430
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v4}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getThumbnailPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 431
    if-eqz v4, :cond_2

    .line 432
    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v0, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 435
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->innerStrokeWidth:F

    div-float/2addr v4, v6

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->borderStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 443
    :cond_2
    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRevealCircleOpacity:F

    mul-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 444
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->revealCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 446
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 450
    :cond_3
    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    div-float v2, v3, v2

    .line 453
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 456
    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentHitStateCircleOpacity:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 457
    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->hitStateCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 460
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    float-to-int v0, v0

    .line 373
    invoke-virtual {p0, v0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->setMeasuredDimension(II)V

    .line 374
    return-void
.end method

.method public final setCallback(Lcom/android/camera/widget/RoundedThumbnailView$Callback;)V
    .locals 1

    .prologue
    .line 468
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->callback:Lcom/google/common/base/Optional;

    .line 469
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 478
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->optionalOnClickListener:Lcom/google/common/base/Optional;

    .line 479
    return-void
.end method

.method public final setThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 549
    .line 3574
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v3, "setThumbnail"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 4363
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    if-eqz v0, :cond_0

    .line 4364
    iput-boolean v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    .line 4365
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 3581
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-nez v0, :cond_1

    .line 3583
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    invoke-static {v0, v4}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->createNonAnimatedRevealRequest(FLjava/lang/String;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 3585
    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->setThumbnailBitmap(Landroid/graphics/Bitmap;I)V

    .line 3590
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3591
    iput-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 3592
    iput-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 4685
    :cond_2
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v3, "runPendingRequestAnimation"

    invoke-static {v0, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4687
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->isAnimationDisabled()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 4688
    :goto_0
    if-eqz v0, :cond_3

    .line 4690
    iput-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 4691
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    if-eqz v3, :cond_3

    .line 4692
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 4693
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v3}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 4694
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->backgroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v3}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 4698
    :cond_3
    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    iput-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 4699
    iput-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 4701
    if-nez v0, :cond_7

    .line 4702
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_4

    .line 4704
    iget v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentThumbnailDiameter:F

    .line 4705
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->currentRevealCircleOpacity:F

    .line 4706
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishThumbnailAnimation()V

    .line 4708
    :cond_4
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    .line 4709
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->finishRippleAnimation()V

    .line 4711
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 4712
    :goto_1
    return-void

    :cond_6
    move v0, v2

    .line 4687
    goto :goto_0

    .line 4716
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->clearAnimations()V

    .line 4719
    invoke-virtual {p0, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 4723
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getFastOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 4726
    new-array v3, v6, [F

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterBegin:F

    aput v4, v3, v2

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailStretchDiameterEnd:F

    aput v4, v3, v1

    .line 4727
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 4728
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4729
    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4730
    new-instance v4, Lcom/android/camera/widget/RoundedThumbnailView$2;

    invoke-direct {v4, p0}, Lcom/android/camera/widget/RoundedThumbnailView$2;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4746
    new-array v4, v6, [F

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterBegin:F

    aput v5, v4, v2

    iget v5, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailShrinkDiameterEnd:F

    aput v5, v4, v1

    .line 4747
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 4748
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4749
    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4750
    new-instance v0, Lcom/android/camera/widget/RoundedThumbnailView$3;

    invoke-direct {v0, p0}, Lcom/android/camera/widget/RoundedThumbnailView$3;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4760
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4761
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 4762
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/camera/widget/RoundedThumbnailView$4;

    invoke-direct {v3, p0}, Lcom/android/camera/widget/RoundedThumbnailView$4;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4776
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->thumbnailAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4781
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/motion/InterpolatorHelper;->getLinearOutSlowInInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 4784
    new-array v3, v6, [F

    iget v4, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterBegin:F

    aput v4, v3, v2

    iget v2, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleRingDiameterEnd:F

    aput v2, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    .line 4785
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4786
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4787
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$5;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$5;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4798
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/widget/RoundedThumbnailView$6;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/RoundedThumbnailView$6;-><init>(Lcom/android/camera/widget/RoundedThumbnailView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4814
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 4815
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->rippleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4818
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->foregroundRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->getAccessibilityString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->isVisibilityDisabled:Z

    if-nez v0, :cond_0

    .line 351
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_0
    return-void
.end method

.method public final startRevealThumbnailAnimation(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v1, "startRevealThumbnailAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 519
    invoke-virtual {p0}, Lcom/android/camera/widget/RoundedThumbnailView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, p1}, Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;->createAnimatedRevealRequest(FLjava/lang/String;)Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->pendingRequest:Lcom/android/camera/widget/RoundedThumbnailView$RevealRequest;

    .line 520
    return-void
.end method

.method public final stopFlashThumbnail()V
    .locals 2

    .prologue
    .line 536
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v1, "stopFlashThumbnail"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/google/android/apps/camera/async/MainThread;->checkMainThread()V

    .line 2875
    sget-object v0, Lcom/android/camera/widget/RoundedThumbnailView;->TAG:Ljava/lang/String;

    const-string v1, "runPendingFlashAnimation"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2881
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView;->burstFlashAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 540
    :cond_0
    return-void
.end method
