.class public final Lcom/ortiz/touch/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ortiz/touch/TouchImageView$ZoomVariables;,
        Lcom/ortiz/touch/TouchImageView$CompatScroller;,
        Lcom/ortiz/touch/TouchImageView$Fling;,
        Lcom/ortiz/touch/TouchImageView$DoubleTapZoom;,
        Lcom/ortiz/touch/TouchImageView$ScaleListener;,
        Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;,
        Lcom/ortiz/touch/TouchImageView$GestureListener;,
        Lcom/ortiz/touch/TouchImageView$State;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lcom/ortiz/touch/TouchImageView$Fling;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private normalizedScale:F

.field private onDrawReady:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private scaleDetector:Landroid/view/ScaleGestureDetector;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private state$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI4URIKDTQM6Q29DLGMEPAMD5INEJ39EDQ6ARJ5E8TG____:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 104
    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 105
    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 106
    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->touchImageViewListener$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI4URIKDTQM6Q29DLGMEPAMD5INEJ39EDQ6ARJ5E8TG____:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 2124
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 2125
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView;->context:Landroid/content/Context;

    .line 2126
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/ortiz/touch/TouchImageView$ScaleListener;

    invoke-direct {v1, p0, v2}, Lcom/ortiz/touch/TouchImageView$ScaleListener;-><init>(Lcom/ortiz/touch/TouchImageView;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2127
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/ortiz/touch/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lcom/ortiz/touch/TouchImageView$GestureListener;-><init>(Lcom/ortiz/touch/TouchImageView;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 2128
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 2129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    .line 2130
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    .line 2131
    iput v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 2132
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    .line 2133
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 2135
    :cond_0
    iput v3, p0, Lcom/ortiz/touch/TouchImageView;->minScale:F

    .line 2136
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->maxScale:F

    .line 2137
    const/high16 v0, 0x3f400000    # 0.75f

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->minScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->superMinScale:F

    .line 2138
    const/high16 v0, 0x3fa00000    # 1.25f

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->maxScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->superMaxScale:F

    .line 2139
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 2140
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/ortiz/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2141
    sget v0, Lcom/ortiz/touch/TouchImageView$State;->NONE$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 2755
    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->state$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 2142
    iput-boolean v2, p0, Lcom/ortiz/touch/TouchImageView;->onDrawReady:Z

    .line 2143
    new-instance v0, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/ortiz/touch/TouchImageView$PrivateOnTouchListener;-><init>(Lcom/ortiz/touch/TouchImageView;B)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$1000(Lcom/ortiz/touch/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ortiz/touch/TouchImageView;)Landroid/view/GestureDetector;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMJ33DTMIURRIEHKNKBRKDTQM6Q1FAHNNAOR895MM2PR5APKMATP4ADQ62T357CKLC___(Lcom/ortiz/touch/TouchImageView;I)V
    .locals 0

    .prologue
    .line 41
    .line 5755
    iput p1, p0, Lcom/ortiz/touch/TouchImageView;->state$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    .line 41
    return-void
.end method

.method static synthetic access$1300(Lcom/ortiz/touch/TouchImageView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/ortiz/touch/TouchImageView;)F
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/ortiz/touch/TouchImageView;FFF)F
    .locals 1

    .prologue
    .line 41
    invoke-static {p1, p2, p3}, Lcom/ortiz/touch/TouchImageView;->getFixDragTrans(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/ortiz/touch/TouchImageView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/ortiz/touch/TouchImageView;)F
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/ortiz/touch/TouchImageView;)Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$2000(Lcom/ortiz/touch/TouchImageView;)Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ortiz/touch/TouchImageView;DFFZ)V
    .locals 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/ortiz/touch/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/ortiz/touch/TouchImageView;FFZ)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ortiz/touch/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ortiz/touch/TouchImageView;FF)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/ortiz/touch/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ortiz/touch/TouchImageView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2600(Lcom/ortiz/touch/TouchImageView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/ortiz/touch/TouchImageView;)[F
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/ortiz/touch/TouchImageView;)Lcom/ortiz/touch/TouchImageView$Fling;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->fling:Lcom/ortiz/touch/TouchImageView$Fling;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ortiz/touch/TouchImageView;Lcom/ortiz/touch/TouchImageView$Fling;)Lcom/ortiz/touch/TouchImageView$Fling;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView;->fling:Lcom/ortiz/touch/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ortiz/touch/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/ortiz/touch/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600$51666RRD5TNN4T39F8NN8RRLCDK2UL3FELHMGIBDC5JMALJ9CLRJMAACCDNMQBRFE9Q6IUHFEHNNAOR85TA6UTB3D14MQOB7CLB6IPBN4H9N8OBKCKTG____(Lcom/ortiz/touch/TouchImageView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->state$9HHMUR9FDTP78QBQ5TQ6UTB3D0NL8RRLCDK4IRB1CTILCQB5ESI56T31EHIJM___:I

    return v0
.end method

.method static synthetic access$700(Lcom/ortiz/touch/TouchImageView;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    return v0
.end method

.method static synthetic access$800(Lcom/ortiz/touch/TouchImageView;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->minScale:F

    return v0
.end method

.method static synthetic access$900(Lcom/ortiz/touch/TouchImageView;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->maxScale:F

    return v0
.end method

.method private final compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/ortiz/touch/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 1295
    :goto_0
    return-void

    .line 1293
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/ortiz/touch/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private final fitImageToView()V
    .locals 12

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 559
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 569
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 570
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 575
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    int-to-float v2, v7

    div-float v2, v0, v2

    .line 576
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v0, v0

    int-to-float v4, v8

    div-float/2addr v0, v4

    .line 578
    sget-object v4, Lcom/ortiz/touch/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 601
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v3

    move v2, v3

    .line 608
    :goto_1
    :pswitch_1
    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v4, v4

    int-to-float v6, v7

    mul-float/2addr v6, v2

    sub-float v6, v4, v6

    .line 609
    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    int-to-float v9, v8

    mul-float/2addr v9, v0

    sub-float v9, v4, v9

    .line 610
    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/ortiz/touch/TouchImageView;->matchViewWidth:F

    .line 611
    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v9

    iput v4, p0, Lcom/ortiz/touch/TouchImageView;->matchViewHeight:F

    .line 5218
    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 612
    :goto_2
    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/ortiz/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v4, :cond_3

    .line 616
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 617
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    div-float v1, v6, v11

    div-float v2, v9, v11

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 618
    iput v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 677
    :goto_3
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixTrans()V

    .line 678
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 584
    :pswitch_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v0

    .line 585
    goto :goto_1

    .line 588
    :pswitch_3
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v0

    .line 591
    :pswitch_4
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v2, v0

    .line 592
    goto :goto_1

    :cond_2
    move v4, v5

    .line 5218
    goto :goto_2

    .line 626
    :cond_3
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewWidth:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_5

    .line 627
    :cond_4
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 630
    :cond_5
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 635
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->matchViewWidth:F

    int-to-float v3, v7

    div-float/2addr v2, v3

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float/2addr v2, v3

    aput v2, v0, v5

    .line 636
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v2, 0x4

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->matchViewHeight:F

    int-to-float v4, v8

    div-float/2addr v3, v4

    iget v4, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float/2addr v3, v4

    aput v3, v0, v2

    .line 641
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    aget v2, v0, v1

    .line 642
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v3, 0x5

    aget v9, v0, v3

    .line 647
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewWidth:F

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float/2addr v3, v0

    .line 648
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v4

    .line 649
    iget v5, p0, Lcom/ortiz/touch/TouchImageView;->prevViewWidth:I

    iget v6, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/ortiz/touch/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 661
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewHeight:F

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float v3, v0, v1

    .line 662
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v4

    .line 663
    const/4 v1, 0x5

    iget v5, p0, Lcom/ortiz/touch/TouchImageView;->prevViewHeight:I

    iget v6, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    move-object v0, p0

    move v2, v9

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/ortiz/touch/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 675
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    goto/16 :goto_3

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private final fixScaleTrans()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 479
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixTrans()V

    .line 480
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 481
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 485
    :cond_0
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 489
    return-void
.end method

.method private final fixTrans()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 459
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 460
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 461
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 463
    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/ortiz/touch/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    .line 464
    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/ortiz/touch/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    .line 466
    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_1

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 469
    :cond_1
    return-void
.end method

.method private static getFixDragTrans(FFF)F
    .locals 1

    .prologue
    .line 509
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_0

    .line 510
    const/4 p0, 0x0

    .line 512
    :cond_0
    return p0
.end method

.method private static getFixTrans(FFF)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 494
    cmpg-float v1, p2, p1

    if-gtz v1, :cond_1

    .line 496
    sub-float v1, p1, p2

    move v2, v0

    .line 503
    :goto_0
    cmpg-float v3, p0, v2

    if-gez v3, :cond_2

    neg-float v0, p0

    add-float/2addr v0, v2

    .line 505
    :cond_0
    :goto_1
    return v0

    .line 499
    :cond_1
    sub-float v1, p1, p2

    move v2, v1

    move v1, v0

    .line 500
    goto :goto_0

    .line 504
    :cond_2
    cmpl-float v2, p0, v1

    if-lez v2, :cond_0

    neg-float v0, p0

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method private final getImageHeight()F
    .locals 2

    .prologue
    .line 520
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getImageWidth()F
    .locals 2

    .prologue
    .line 516
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private final savePreviousImageValues()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 244
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 245
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewHeight:F

    .line 246
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewWidth:F

    .line 247
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevViewHeight:I

    .line 248
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevViewWidth:I

    .line 250
    :cond_0
    return-void
.end method

.method private final scaleImage(DFFZ)V
    .locals 7

    .prologue
    .line 964
    if-eqz p5, :cond_1

    .line 965
    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->superMinScale:F

    .line 966
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->superMaxScale:F

    .line 973
    :goto_0
    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 974
    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    float-to-double v4, v3

    mul-double/2addr v4, p1

    double-to-float v3, v4

    iput v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 975
    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    .line 976
    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 977
    div-float/2addr v0, v2

    float-to-double p1, v0

    .line 983
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float v1, p1

    double-to-float v2, p1

    invoke-virtual {v0, v1, v2, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 984
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixScaleTrans()V

    .line 985
    return-void

    .line 969
    :cond_1
    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->minScale:F

    .line 970
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->maxScale:F

    goto :goto_0

    .line 978
    :cond_2
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 979
    iput v1, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 980
    div-float v0, v1, v2

    float-to-double p1, v0

    goto :goto_1
.end method

.method private static setViewSize(III)I
    .locals 0

    .prologue
    .line 691
    sparse-switch p0, :sswitch_data_0

    .line 708
    :goto_0
    :sswitch_0
    return p1

    .line 697
    :sswitch_1
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :sswitch_2
    move p1, p2

    .line 702
    goto :goto_0

    .line 691
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    .line 395
    iget-boolean v0, p0, Lcom/ortiz/touch/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ortiz/touch/TouchImageView$ZoomVariables;-><init>(FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    .line 411
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_1

    .line 401
    invoke-virtual {p0, p4}, Lcom/ortiz/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    :cond_1
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->resetZoom()V

    .line 404
    float-to-double v2, p1

    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ortiz/touch/TouchImageView;->scaleImage(DFFZ)V

    .line 405
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 406
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v2

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v2

    mul-float/2addr v2, p3

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 409
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fixTrans()V

    .line 410
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/ortiz/touch/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private final transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1123
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1124
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1125
    div-float v0, p1, v0

    .line 1126
    div-float v1, p2, v1

    .line 1127
    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 1128
    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 1129
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private final transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1098
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1099
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v2, v0

    .line 1100
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v3, v0

    .line 1101
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 1102
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v4, 0x5

    aget v4, v1, v4

    .line 1103
    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v1

    div-float v1, v0, v1

    .line 1104
    sub-float v0, p2, v4

    mul-float/2addr v0, v3

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageHeight()F

    move-result v4

    div-float/2addr v0, v4

    .line 1106
    if-eqz p3, :cond_0

    .line 1107
    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1108
    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1111
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private final translateMatrixAfterRotate(IFFFIII)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 731
    int-to-float v0, p6

    cmpg-float v0, p4, v0

    if-gez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    int-to-float v1, p6

    int-to-float v2, p7

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    aput v1, v0, p1

    .line 752
    :goto_0
    return-void

    .line 737
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    int-to-float v1, p6

    sub-float v1, p4, v1

    mul-float/2addr v1, v5

    neg-float v1, v1

    aput v1, v0, p1

    goto :goto_0

    .line 749
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, p5

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    div-float/2addr v0, p3

    .line 750
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    mul-float/2addr v0, p4

    int-to-float v2, p6

    mul-float/2addr v2, v5

    sub-float/2addr v0, v2

    neg-float v0, v0

    aput v0, v1, p1

    goto :goto_0
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 764
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 765
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 767
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v2

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 777
    :cond_0
    :goto_0
    return v0

    .line 770
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    if-ltz p1, :cond_0

    .line 773
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->getImageWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    if-gtz p1, :cond_0

    .line 777
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 304
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 305
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/ortiz/touch/TouchImageView;->onDrawReady:Z

    .line 289
    iput-boolean v0, p0, Lcom/ortiz/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 290
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    iget v0, v0, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    iget v1, v1, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    iget v2, v2, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lcom/ortiz/touch/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/ortiz/touch/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->delayedZoomVariables:Lcom/ortiz/touch/TouchImageView$ZoomVariables;

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 299
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 529
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/ortiz/touch/TouchImageView;->setMeasuredDimension(II)V

    .line 551
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 534
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 535
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 536
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 537
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 538
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 539
    invoke-static {v3, v2, v1}, Lcom/ortiz/touch/TouchImageView;->setViewSize(III)I

    move-result v1

    iput v1, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    .line 540
    invoke-static {v5, v4, v0}, Lcom/ortiz/touch/TouchImageView;->setViewSize(III)I

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    .line 545
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/ortiz/touch/TouchImageView;->setMeasuredDimension(II)V

    .line 550
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    goto :goto_0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 269
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 270
    check-cast p1, Landroid/os/Bundle;

    .line 271
    const-string v0, "saveScale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 272
    const-string v0, "matrix"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    .line 273
    iget-object v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 274
    const-string v0, "matchViewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewHeight:F

    .line 275
    const-string v0, "matchViewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevMatchViewWidth:F

    .line 276
    const-string v0, "viewHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevViewHeight:I

    .line 277
    const-string v0, "viewWidth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->prevViewWidth:I

    .line 278
    const-string v0, "imageRendered"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ortiz/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 279
    const-string v0, "instanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 256
    const-string v1, "saveScale"

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 257
    const-string v1, "matchViewHeight"

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->matchViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 258
    const-string v1, "matchViewWidth"

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->matchViewWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 259
    const-string v1, "viewWidth"

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v1, "viewHeight"

    iget v2, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    iget-object v1, p0, Lcom/ortiz/touch/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 262
    const-string v1, "matrix"

    iget-object v2, p0, Lcom/ortiz/touch/TouchImageView;->m:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 263
    const-string v1, "imageRendered"

    iget-boolean v2, p0, Lcom/ortiz/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    return-object v0
.end method

.method public final resetZoom()V
    .locals 1

    .prologue
    .line 354
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 355
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    .line 356
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 170
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    .line 171
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 177
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    .line 178
    return-void
.end method

.method public final setImageResource(I)V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 163
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    .line 164
    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 183
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->savePreviousImageValues()V

    .line 184
    invoke-direct {p0}, Lcom/ortiz/touch/TouchImageView;->fitImageToView()V

    .line 185
    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 149
    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 5

    .prologue
    .line 189
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_1

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_3

    .line 194
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    :cond_2
    :goto_0
    return-void

    .line 197
    :cond_3
    iput-object p1, p0, Lcom/ortiz/touch/TouchImageView;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 198
    iget-boolean v0, p0, Lcom/ortiz/touch/TouchImageView;->onDrawReady:Z

    if-eqz v0, :cond_2

    .line 3431
    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3432
    if-nez v0, :cond_4

    .line 3433
    const/4 v0, 0x0

    .line 4338
    :goto_1
    iget v1, p0, Lcom/ortiz/touch/TouchImageView;->normalizedScale:F

    .line 3420
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/ortiz/touch/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/ortiz/touch/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 3435
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3436
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 3438
    iget v0, p0, Lcom/ortiz/touch/TouchImageView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/ortiz/touch/TouchImageView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Lcom/ortiz/touch/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 3439
    iget v3, v0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 3440
    iget v1, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method
