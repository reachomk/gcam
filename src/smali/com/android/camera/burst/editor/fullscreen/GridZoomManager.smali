.class public final Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;
.super Ljava/lang/Object;
.source "GridZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;,
        Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;,
        Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeTouchImageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/ortiz/touch/TouchImageView;",
            ">;"
        }
    .end annotation
.end field

.field private containerView:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private currentSectionType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

.field private framesGridView:Landroid/support/v7/widget/RecyclerView;

.field private isZoomed:Z

.field private final listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

.field private secureCamera:Z

.field private shareIcons:Landroid/view/View;

.field private swipeableFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private zoomAnimator:Landroid/animation/Animator;

.field private zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "GridZoomMgr"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    .line 150
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;I)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setZoomViewVisibility(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->resetAllZoomedInFrames()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setupBottomBarControls(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->startZoomIn(Lcom/android/camera/burst/editor/grid/BurstImageView;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setPivotToCenter(Landroid/view/View;)V

    return-void
.end method

.method private static centerUncrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 296
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    sget-object v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->TAG:Ljava/lang/String;

    const-string v1, "Invalid sizes for centerUncrop Rects."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-object p0

    .line 301
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 305
    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 309
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 310
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    div-float v3, v1, v6

    float-to-double v4, v3

    .line 311
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    div-float/2addr v1, v6

    float-to-double v6, v1

    .line 313
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    add-int/2addr v1, v4

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, v0

    .line 310
    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v0, v1

    int-to-float v0, v0

    .line 318
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    .line 319
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    div-float v4, v1, v6

    float-to-double v4, v4

    .line 321
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    div-float/2addr v1, v6

    float-to-double v6, v1

    .line 323
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    add-int/2addr v1, v5

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p0, v0

    .line 319
    goto/16 :goto_0
.end method

.method private static getGlobalRectForView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 269
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 270
    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    .line 273
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 270
    return-object v1
.end method

.method private final resetAllZoomedInFrames()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ortiz/touch/TouchImageView;

    .line 701
    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView;->resetZoom()V

    goto :goto_0

    .line 703
    :cond_0
    return-void
.end method

.method private static setPivotToCenter(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 539
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 541
    return-void
.end method

.method private static setPivotToTopLeftCorner(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 544
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 545
    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    .line 546
    return-void
.end method

.method private final setZoomViewVisibility(I)V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez p1, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAlpha(F)V

    .line 764
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->shareIcons:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 766
    return-void

    .line 763
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final setupBottomBarControls(Landroid/net/Uri;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 706
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->containerView:Landroid/view/ViewGroup;

    const v1, 0x7f1100a1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 707
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->containerView:Landroid/view/ViewGroup;

    const v2, 0x7f1100a3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 708
    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->containerView:Landroid/view/ViewGroup;

    const v3, 0x7f1100a5

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 710
    if-eqz p1, :cond_2

    .line 712
    iget-boolean v3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->secureCamera:Z

    if-eqz v3, :cond_0

    .line 713
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 715
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 727
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->secureCamera:Z

    if-eqz v0, :cond_1

    .line 728
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 730
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 742
    :goto_1
    new-instance v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$8;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$8;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    :goto_2
    return-void

    .line 717
    :cond_0
    new-instance v3, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$6;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$6;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 732
    :cond_1
    new-instance v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$7;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Landroid/net/Uri;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 751
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 754
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 757
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_2
.end method

.method private final startZoomIn(Lcom/android/camera/burst/editor/grid/BurstImageView;)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 477
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ortiz/touch/TouchImageView;

    .line 483
    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setPivotToTopLeftCorner(Landroid/view/View;)V

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfoForThumbnail(Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    move-result-object v1

    .line 486
    iput-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    .line 490
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 491
    iput-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    .line 493
    new-array v3, v8, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 494
    new-instance v4, Lcom/android/camera/burst/editor/fullscreen/ClipInterpolatingAnimationUpdateListener;

    invoke-direct {v4, v0, v1}, Lcom/android/camera/burst/editor/fullscreen/ClipInterpolatingAnimationUpdateListener;-><init>(Lcom/ortiz/touch/TouchImageView;Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 497
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v8, [F

    iget v6, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dx:F

    aput v6, v5, v9

    aput v11, v5, v10

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v8, [F

    iget v7, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dy:F

    aput v7, v6, v9

    aput v11, v6, v10

    .line 498
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    iget v7, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startScale:F

    aput v7, v6, v9

    aput v12, v6, v10

    .line 499
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    iget v1, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startScale:F

    aput v1, v6, v9

    aput v12, v6, v10

    .line 500
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    .line 501
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->shareIcons:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    .line 502
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 505
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 506
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$4;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 535
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 536
    return-void

    .line 493
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 500
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 501
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final zoomInfoForThumbnail(Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 551
    invoke-static {p1}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->getGlobalRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 554
    invoke-static {p2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->getGlobalRectForView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    .line 559
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 560
    new-instance v2, Landroid/graphics/Rect;

    .line 561
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 562
    invoke-static {v1, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->centerUncrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 574
    invoke-static {v0, v7}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->centerUncrop(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v2, v3

    .line 579
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 580
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 586
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 587
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 588
    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->left:I

    .line 589
    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->top:I

    .line 590
    iget v0, v5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->right:I

    .line 591
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 595
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 596
    iget v0, v7, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 597
    new-instance v0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;-><init>(Lcom/android/camera/burst/editor/grid/BurstImageView;FFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public final isZoomed()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->isZoomed:Z

    return v0
.end method

.method public final notifyFramesDeleted(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 254
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 260
    return-void
.end method

.method public final setSecureCamera(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->secureCamera:Z

    .line 160
    return-void
.end method

.method public final setup(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->containerView:Landroid/view/ViewGroup;

    .line 164
    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    .line 165
    const v0, 0x7f11009e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 166
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/camera/burst/editor/fullscreen/DepthPageTransformer;

    invoke-direct {v2}, Lcom/android/camera/burst/editor/fullscreen/DepthPageTransformer;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V

    .line 167
    const v0, 0x7f11009f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->shareIcons:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$1;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 197
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setZoomViewVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$SwipePagerAdapter;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 200
    iput-object p3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->context:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;

    invoke-direct {v1, p0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$2;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 218
    return-void
.end method

.method public final updateFrame(Lcom/android/camera/data/BurstFrameItem;)V
    .locals 8

    .prologue
    .line 228
    invoke-virtual {p1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ortiz/touch/TouchImageView;

    .line 232
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asDrawable()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 236
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x1000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 238
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    new-instance v4, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 240
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/4 v2, 0x0

    invoke-direct {v4, v5, v6, v7, v2}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 239
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/RequestOptions;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    .line 237
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 246
    :cond_0
    return-void
.end method

.method public final zoomIn(Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;",
            "Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/data/BurstFrameItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    .line 414
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 415
    iput-object p2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->currentSectionType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 417
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getImageView()Lcom/android/camera/burst/editor/grid/BurstImageView;

    move-result-object v3

    .line 418
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 422
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->isZoomed:Z

    .line 426
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    .line 427
    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 434
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setupBottomBarControls(Landroid/net/Uri;)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    invoke-interface {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;->onZoomInStarted()V

    .line 443
    invoke-virtual {v3, v6}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setAlpha(F)V

    .line 444
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->shareIcons:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 446
    invoke-direct {p0, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setZoomViewVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 453
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$3;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;)V

    .line 454
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 463
    return-void

    .line 431
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 432
    goto :goto_0
.end method

.method public final zoomOut()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 601
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    if-nez v0, :cond_0

    .line 697
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setupBottomBarControls(Landroid/net/Uri;)V

    .line 611
    iput-boolean v10, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->isZoomed:Z

    .line 613
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 616
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setZoomViewVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    invoke-interface {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;->onZoomOutFinished()V

    .line 618
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    goto :goto_0

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->listener:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;

    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 624
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->currentSectionType:Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;

    .line 623
    invoke-interface {v1, v0, v2}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$GridZoomEventListener;->onZoomOutStarted(Lcom/android/camera/data/BurstFrameItem;Lcom/android/camera/burst/editor/BurstGridSections$GridElementType;)Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;

    move-result-object v1

    .line 626
    iget-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->swipeableFrames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/BurstFrameItem;

    invoke-virtual {v0}, Lcom/android/camera/data/BurstFrameItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 627
    iget-object v2, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->activeTouchImageViews:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ortiz/touch/TouchImageView;

    .line 633
    if-eqz v1, :cond_3

    .line 634
    invoke-virtual {v1}, Lcom/android/camera/burst/editor/grid/GridFrameViewHolder;->getImageView()Lcom/android/camera/burst/editor/grid/BurstImageView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfoForThumbnail(Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    move-result-object v1

    .line 641
    :goto_1
    iget-object v2, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->gridImageView:Lcom/android/camera/burst/editor/grid/BurstImageView;

    .line 642
    invoke-virtual {v2, v8}, Lcom/android/camera/burst/editor/grid/BurstImageView;->setAlpha(F)V

    .line 646
    invoke-virtual {v0}, Lcom/ortiz/touch/TouchImageView;->resetZoom()V

    .line 650
    invoke-static {v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->setPivotToTopLeftCorner(Landroid/view/View;)V

    .line 654
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 656
    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 657
    new-instance v5, Lcom/android/camera/burst/editor/fullscreen/ClipInterpolatingAnimationUpdateListener;

    invoke-direct {v5, v0, v1}, Lcom/android/camera/burst/editor/fullscreen/ClipInterpolatingAnimationUpdateListener;-><init>(Lcom/ortiz/touch/TouchImageView;Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 660
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v9, [F

    aput v8, v6, v10

    iget v7, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dx:F

    aput v7, v6, v11

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v8, v7, v10

    iget v8, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->dy:F

    aput v8, v7, v11

    .line 661
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v9, [F

    aput v12, v7, v10

    iget v8, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startScale:F

    aput v8, v7, v11

    .line 662
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v12, v7, v10

    iget v1, v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;->startScale:F

    aput v1, v7, v11

    .line 663
    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->framesGridView:Landroid/support/v7/widget/RecyclerView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_1

    .line 664
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->shareIcons:Landroid/view/View;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_2

    .line 665
    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 666
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 667
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 668
    sget-object v1, Lcom/android/camera/util/Gusterpolator;->INSTANCE:Lcom/android/camera/util/Gusterpolator;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 669
    new-instance v1, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$5;-><init>(Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;Lcom/android/camera/burst/editor/grid/BurstImageView;Lcom/ortiz/touch/TouchImageView;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 694
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 695
    iput-object v3, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomAnimator:Landroid/animation/Animator;

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    goto/16 :goto_0

    .line 638
    :cond_3
    iget-object v1, p0, Lcom/android/camera/burst/editor/fullscreen/GridZoomManager;->zoomInfo:Lcom/android/camera/burst/editor/fullscreen/GridZoomManager$ZoomInfo;

    goto/16 :goto_1

    .line 656
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 663
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 664
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
