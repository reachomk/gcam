.class public Lcom/android/camera/ui/BottomBarSideControls;
.super Landroid/widget/LinearLayout;
.source "BottomBarSideControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/BottomBarSideControls$ChildData;
    }
.end annotation


# instance fields
.field apiHelper:Lcom/android/camera/util/ApiHelper;

.field private cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/BottomBarSideControls$ChildData;",
            ">;"
        }
    .end annotation
.end field

.field private currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

.field private hfrButton:Lcom/android/camera/widget/HfrButton;

.field private hideAnimator:Landroid/animation/Animator;

.field private isNaturalPortrait:Z

.field private lastMultiWindowState:Z

.field private lastSurfaceRotation:I

.field private leftButtonLayout:Landroid/widget/FrameLayout;

.field private roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

.field private showAnimator:Landroid/animation/Animator;

.field private showThumbnail:Z

.field private slidingButtonAnimation:Lcom/android/camera/ui/animation/SlidingButtonAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/HasCameraAppComponent;

    invoke-interface {v0}, Lcom/android/camera/app/HasCameraAppComponent;->component$50KKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM2S3G5T1M2RB5E9GK2S3G8DNMQS3FDPIMST1R()Lcom/android/camera/one/v2/OneCameraFactoryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/one/v2/OneCameraFactoryProvider;->inject(Lcom/android/camera/ui/BottomBarSideControls;)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->setLayoutDirection(I)V

    .line 65
    new-instance v0, Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getOrientation()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->slidingButtonAnimation:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showThumbnail:Z

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/BottomBarSideControls;)Lcom/android/camera/widget/HfrButton;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    return-object v0
.end method

.method private final getNaturalPortraitRotation(I)I
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 442
    iget-boolean v3, p0, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait:Z

    if-nez v3, :cond_0

    .line 446
    if-nez p1, :cond_1

    move p1, v0

    .line 456
    :cond_0
    :goto_0
    return p1

    .line 448
    :cond_1
    if-ne p1, v0, :cond_2

    move p1, v1

    .line 449
    goto :goto_0

    .line 450
    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v2

    .line 451
    goto :goto_0

    .line 452
    :cond_3
    if-ne p1, v2, :cond_0

    .line 453
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private final getSlidingAnimator(Z)Landroid/animation/Animator;
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->slidingButtonAnimation:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->setOrientation(I)V

    .line 246
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 247
    const/4 v0, 0x0

    .line 250
    iget-boolean v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->showThumbnail:Z

    if-eqz v2, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->slidingButtonAnimation:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    iget-object v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v3, 0x1

    .line 252
    invoke-virtual {v0, v2, v3, p1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->getAnimator(Landroid/view/View;IZ)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 253
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->slidingButtonAnimation:Lcom/android/camera/ui/animation/SlidingButtonAnimation;

    iget-object v3, p0, Lcom/android/camera/ui/BottomBarSideControls;->leftButtonLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/ui/animation/SlidingButtonAnimation;->getAnimator(Landroid/view/View;IZ)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 258
    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 264
    :goto_0
    return-object v1

    .line 261
    :cond_1
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0
.end method

.method private static isNaturalPortrait(ILandroid/graphics/Point;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 460
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    if-le v2, v3, :cond_2

    move v2, v0

    .line 463
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p0, :cond_1

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    :cond_0
    if-nez v2, :cond_3

    if-eq p0, v0, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 460
    goto :goto_0

    :cond_3
    move v0, v1

    .line 463
    goto :goto_1
.end method

.method private final measureFromBottomBarRect()V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v0, v0, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarContent:Landroid/graphics/RectF;

    .line 399
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 400
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 398
    invoke-super {p0, v1, v0}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 402
    :cond_0
    return-void
.end method

.method private final relayoutChildren(IZ)V
    .locals 6

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->removeAllViews()V

    .line 378
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/BottomBarSideControls;->setOrientation(I)V

    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 382
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v2, :cond_4

    .line 383
    if-eqz p2, :cond_1

    sub-int v0, v2, v1

    .line 384
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/BottomBarSideControls;->children:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/BottomBarSideControls$ChildData;

    .line 387
    iget-object v3, v0, Lcom/android/camera/ui/BottomBarSideControls$ChildData;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 2406
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 2413
    if-nez p1, :cond_2

    .line 2414
    if-eqz p2, :cond_0

    .line 2415
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2416
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2417
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2418
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 388
    :cond_0
    :goto_2
    iget-object v0, v0, Lcom/android/camera/ui/BottomBarSideControls$ChildData;->child:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/android/camera/ui/BottomBarSideControls;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 383
    goto :goto_1

    .line 2421
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 2422
    if-eqz p2, :cond_3

    .line 2423
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2424
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2425
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2426
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 2428
    :cond_3
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 2429
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 2430
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 2431
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_2

    .line 392
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBarSideControls;->measureFromBottomBarRect()V

    .line 393
    return-void
.end method

.method private final updateLayout(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 357
    packed-switch p1, :pswitch_data_0

    .line 371
    :goto_0
    iput p1, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    .line 372
    return-void

    .line 359
    :pswitch_0
    invoke-direct {p0, v0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->relayoutChildren(IZ)V

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/camera/ui/BottomBarSideControls;->relayoutChildren(IZ)V

    goto :goto_0

    .line 365
    :pswitch_2
    invoke-direct {p0, v1, v1}, Lcom/android/camera/ui/BottomBarSideControls;->relayoutChildren(IZ)V

    goto :goto_0

    .line 368
    :pswitch_3
    invoke-direct {p0, v0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->relayoutChildren(IZ)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final fadeIn()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 227
    :cond_0
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public final hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/BottomBarSideControls;->setClickable(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_2

    .line 189
    invoke-direct {p0, v2}, Lcom/android/camera/ui/BottomBarSideControls;->getSlidingAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/camera/ui/BottomBarSideControls$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/BottomBarSideControls$2;-><init>(Lcom/android/camera/ui/BottomBarSideControls;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public final initializeHfrButton(Lcom/android/camera/ui/ButtonManager$ButtonCallback;ZI)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    new-instance v1, Lcom/android/camera/ui/CountDownView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/ui/CountDownView$1;-><init>(Lcom/android/camera/ui/BottomBarSideControls;Lcom/android/camera/ui/ButtonManager$ButtonCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/HfrButton;->setOnStateChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    invoke-virtual {v0, p2}, Lcom/android/camera/widget/HfrButton;->setIs240FpsSupported(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    invoke-virtual {v0, p3, v2}, Lcom/android/camera/widget/HfrButton;->setState(IZ)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/widget/HfrButton;->setEnabled(Z)V

    .line 134
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/HfrButton;->setOnStateChangeListener(Lcom/android/camera/widget/OnStateChangeListener;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 292
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastMultiWindowState:Z

    .line 295
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastMultiWindowState:Z

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    .line 302
    :goto_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 303
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 305
    iget-boolean v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastMultiWindowState:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    .line 306
    invoke-static {v2, v0}, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait(ILandroid/graphics/Point;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait:Z

    .line 307
    iget v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->getNaturalPortraitRotation(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->updateLayout(I)V

    .line 308
    monitor-exit p0

    return-void

    .line 300
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, v1

    .line 306
    goto :goto_1
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    const v0, 0x7f110096

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->leftButtonLayout:Landroid/widget/FrameLayout;

    .line 76
    const v0, 0x7f110097

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/CameraSwitchButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

    .line 77
    const v0, 0x7f110098

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/HfrButton;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    .line 78
    const v0, 0x7f11009a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView;

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->children:Ljava/util/List;

    .line 83
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->children:Ljava/util/List;

    new-instance v2, Lcom/android/camera/ui/BottomBarSideControls$ChildData;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/BottomBarSideControls$ChildData;-><init>(Landroid/view/View;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 313
    monitor-enter p0

    .line 316
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isNOrHigher()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 318
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    move v2, v0

    .line 320
    :goto_0
    if-eqz v2, :cond_2

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait:Z

    move v0, v1

    .line 333
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->getNaturalPortraitRotation(I)I

    move-result v0

    .line 334
    iget v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastSurfaceRotation:I

    if-ne v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    iget-object v3, v3, Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;->bottomBarRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastMultiWindowState:Z

    if-eq v1, v2, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->updateLayout(I)V

    .line 339
    iput-boolean v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->lastMultiWindowState:Z

    .line 341
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 342
    monitor-exit p0

    return-void

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 331
    new-instance v1, Landroid/graphics/Point;

    sub-int v3, p5, p3

    sub-int v4, p4, p2

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait(ILandroid/graphics/Point;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->isNaturalPortrait:Z

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v2, v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 347
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 348
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 349
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    if-nez v0, :cond_1

    .line 350
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/BottomBarSideControls;->measureFromBottomBarRect()V

    goto :goto_0
.end method

.method public final resetSideButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 1643
    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setPressed(Z)V

    .line 1644
    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

    .line 2230
    invoke-virtual {v0, v1}, Lcom/android/camera/widget/CameraSwitchButton;->setPressed(Z)V

    .line 2231
    invoke-virtual {v0}, Lcom/android/camera/widget/CameraSwitchButton;->invalidate()V

    .line 242
    return-void
.end method

.method public final setCameraButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/widget/CameraSwitchButton;->setVisibility(I)V

    .line 95
    return-void

    .line 94
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/CameraSwitchButton;->setClickable(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/RoundedThumbnailView;->setClickable(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/HfrButton;->setClickable(Z)V

    .line 272
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->cameraFacingButton:Lcom/android/camera/widget/CameraSwitchButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/CameraSwitchButton;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/RoundedThumbnailView;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/HfrButton;->setEnabled(Z)V

    .line 278
    return-void
.end method

.method public final setHfrButtonVisibility(Z)V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/ui/BottomBarSideControls;->hfrButton:Lcom/android/camera/widget/HfrButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/widget/HfrButton;->setVisibility(I)V

    .line 104
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final setPreviewLayout(Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/ui/BottomBarSideControls;->currentLayout:Lcom/android/camera/ui/CaptureLayoutHelper$CaptureLayoutResult;

    .line 234
    return-void
.end method

.method public final setThumbnailVisibility(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showThumbnail:Z

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->roundedThumbnailView:Lcom/android/camera/widget/RoundedThumbnailView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/RoundedThumbnailView;->setVisibility(I)V

    .line 144
    iput-object v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    .line 145
    iput-object v2, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    .line 146
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/ui/BottomBarSideControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_1

    .line 165
    invoke-direct {p0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->getSlidingAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->hideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 171
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/BottomBarSideControls;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/BottomBarSideControls;->showAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/BottomBarSideControls;->setClickable(Z)V

    goto :goto_0
.end method
