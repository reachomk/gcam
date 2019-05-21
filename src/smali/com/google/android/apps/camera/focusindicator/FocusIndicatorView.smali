.class public Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;
.super Landroid/widget/RelativeLayout;
.source "FocusIndicatorView.java"

# interfaces
.implements Lcom/google/android/apps/camera/async/Updatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;
    }
.end annotation


# instance fields
.field activeFocusConvergeAnimator:Landroid/animation/Animator;

.field activeFocusScanAnimator:Landroid/animation/Animator;

.field private afSupported:Z

.field chipView:Landroid/widget/TextView;

.field private final component$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMCRR3ELPMIRJ4D5HM2T3FE8NKCRR3ELPKIRJ4D5HM2T3FE9B6IPBN8DNMQS3FDPIMST1R:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

.field private currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

.field debugHudView:Landroid/widget/TextView;

.field focusLockHoldAnimator:Landroid/animation/Animator;

.field focusLockReleaseAnimator:Landroid/animation/Animator;

.field private final originArray:[I

.field passiveFocusConvergeAnimator:Landroid/animation/Animator;

.field private passiveFocusEnabled:Z

.field passiveFocusScanAnimator:Landroid/animation/Animator;

.field ringDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

.field ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

.field private final viewOrigin:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->viewOrigin:Landroid/graphics/PointF;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->originArray:[I

    .line 92
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfState;->inactiveState()Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 94
    iput-boolean v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->afSupported:Z

    .line 96
    iput-boolean v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusEnabled:Z

    .line 1339
    const-string v0, "layout_inflater"

    .line 1340
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1341
    const v1, 0x7f04003f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->initDaggerComponent$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR6DTHNASR9DPI6IOR1EHNN4BQ6DTHNASQ9DPI6IOR1EHNN4LJ9CLRK6RRDE1NMSPBEEGTG____(Landroid/content/Context;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->component$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMCRR3ELPMIRJ4D5HM2T3FE8NKCRR3ELPKIRJ4D5HM2T3FE9B6IPBN8DNMQS3FDPIMST1R:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->component$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMCRR3ELPMIRJ4D5HM2T3FE8NKCRR3ELPKIRJ4D5HM2T3FE9B6IPBN8DNMQS3FDPIMST1R:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    .line 1358
    invoke-interface {v0, p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;->inject(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    .line 103
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->viewOrigin:Landroid/graphics/PointF;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->originArray:[I

    .line 92
    invoke-static {}, Lcom/google/android/apps/camera/aaa/AfState;->inactiveState()Lcom/google/android/apps/camera/aaa/AfState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 94
    iput-boolean v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->afSupported:Z

    .line 96
    iput-boolean v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusEnabled:Z

    .line 119
    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->initDaggerComponent$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR6DTHNASR9DPI6IOR1EHNN4BQ6DTHNASQ9DPI6IOR1EHNN4LJ9CLRK6RRDE1NMSPBEEGTG____(Landroid/content/Context;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->component$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMCRR3ELPMIRJ4D5HM2T3FE8NKCRR3ELPKIRJ4D5HM2T3FE9B6IPBN8DNMQS3FDPIMST1R:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    .line 120
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    .line 121
    iput-object p3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    .line 122
    iput-object p4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->chipView:Landroid/widget/TextView;

    .line 123
    iput-object p5, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->debugHudView:Landroid/widget/TextView;

    .line 124
    iput-object p6, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    .line 125
    iput-object p7, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    .line 126
    iput-object p8, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    .line 127
    iput-object p9, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusConvergeAnimator:Landroid/animation/Animator;

    .line 128
    iput-object p10, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    .line 129
    iput-object p11, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockReleaseAnimator:Landroid/animation/Animator;

    .line 130
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)Lcom/google/android/apps/camera/aaa/AfState;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->afSupported:Z

    return v0
.end method

.method private final hideFocusRing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockReleaseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockReleaseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 375
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->setInnerRingOpacity(F)V

    .line 376
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringDrawer:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingDrawer;->setOuterRingOpacity(F)V

    .line 377
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    .line 378
    return-void
.end method

.method private final initDaggerComponent$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7CKKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR6DTHNASR9DPI6IOR1EHNN4BQ6DTHNASQ9DPI6IOR1EHNN4LJ9CLRK6RRDE1NMSPBEEGTG____(Landroid/content/Context;)Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;
    .locals 3

    .prologue
    .line 348
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;-><init>(Landroid/content/Context;Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    .line 3062
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;-><init>(B)V

    .line 350
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->focusIndicatorViewModule(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorViewModule;)Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/DaggerFocusIndicatorViewComponent$Builder;->build$50KKOORFDKNMERRFCTM6ABR1DPI74RR9CGNM2S3GECNM6OBDCLP62BR6DTHNASR9DPI6IOR1EHNN4BQ6DTHNASQ9DPI6IOR1EHNN4LJ9CLRK6RRDE1NMSPBEEGTG____()Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$Injector;

    move-result-object v0

    .line 349
    return-object v0
.end method

.method private final relativeToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->viewOrigin:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->viewOrigin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    .line 332
    return-object p1
.end method


# virtual methods
.method public final hide()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->hideFocusRing()V

    .line 2381
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->chipView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2382
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->chipView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 165
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    invoke-direct {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->hideFocusRing()V

    .line 327
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 315
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->originArray:[I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getLocationInWindow([I)V

    .line 317
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->viewOrigin:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->originArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->originArray:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 318
    return-void
.end method

.method public final setAutoFocusSupported(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->afSupported:Z

    .line 159
    return-void
.end method

.method public final setDebugHudVisibility(Z)V
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->debugHudView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    return-void

    .line 296
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final setPassiveFocusEnabled(Z)V
    .locals 0

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusEnabled:Z

    .line 302
    return-void
.end method

.method public final startActiveFocusAnimation(Landroid/graphics/PointF;)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->relativeToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->centerAt(Landroid/graphics/PointF;)V

    .line 186
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$1;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public final startFocusLockHoldAnimation(Landroid/graphics/PointF;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-direct {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->relativeToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->centerAt(Landroid/graphics/PointF;)V

    .line 262
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$3;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 280
    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 282
    return-object v0
.end method

.method public final startFocusLockHoldCancelAnimation()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(Z)V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 310
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 311
    return-void
.end method

.method public final startFocusLockHoldConfirmAnimation()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockReleaseAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public final startPassiveFocusAnimation(Lcom/google/common/base/Optional;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    .line 217
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    .line 218
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    .line 219
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    .line 220
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusConvergeAnimator:Landroid/animation/Animator;

    .line 221
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->relativeToView(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->centerAt(Landroid/graphics/PointF;)V

    .line 231
    :goto_1
    new-instance v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView$2;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;)V

    .line 249
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->ringView:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->centerAt(Landroid/graphics/PointF;)V

    goto :goto_1
.end method

.method public final update(Lcom/google/android/apps/camera/aaa/AfStateTransition;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->prevState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    sget-object v3, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->ACTIVE_SCAN:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    .line 136
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->isLensLockedForActiveScan()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 137
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusScanAnimator:Landroid/animation/Animator;

    .line 138
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->focusLockHoldAnimator:Landroid/animation/Animator;

    .line 139
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->activeFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 143
    :cond_0
    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->prevState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    sget-object v3, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->PASSIVE_SCAN:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    iget-object v0, v0, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    .line 145
    invoke-virtual {v0}, Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;->isLensLockedForPassiveScan()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 146
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusScanAnimator:Landroid/animation/Animator;

    .line 148
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->passiveFocusConvergeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 152
    :cond_1
    iget-object v0, p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;->curState:Lcom/google/android/apps/camera/aaa/AfState;

    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->debugHudView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->currentAfState:Lcom/google/android/apps/camera/aaa/AfState;

    .line 2041
    iget-object v4, v3, Lcom/google/android/apps/camera/aaa/AfState;->controlAfMode:Lcom/google/android/apps/camera/proxy/camera2/ControlAfMode;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/apps/camera/aaa/AfState;->controlAfState:Lcom/google/android/apps/camera/proxy/camera2/ControlAfState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "%.2f"

    new-array v1, v1, [Ljava/lang/Object;

    iget v8, v3, Lcom/google/android/apps/camera/aaa/AfState;->lensFocusDistance:F

    .line 2043
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v6, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v3, Lcom/google/android/apps/camera/aaa/AfState;->isSceneChangeDetected:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1f

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "AF mode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n lens:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sc:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    :cond_2
    move v0, v2

    .line 136
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 145
    goto/16 :goto_1
.end method

.method public final bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/apps/camera/aaa/AfStateTransition;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;->update(Lcom/google/android/apps/camera/aaa/AfStateTransition;)V

    return-void
.end method
