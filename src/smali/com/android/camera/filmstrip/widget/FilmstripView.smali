.class public Lcom/android/camera/filmstrip/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripGestures;,
        Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripScrollGesture;,
        Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;,
        Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;,
        Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

.field private centerX:I

.field private checkToIntercept:Z

.field private controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

.field private dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

.field private down:Landroid/view/MotionEvent;

.field private final drawArea:Landroid/graphics/Rect;

.field private filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

.field private filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

.field private filmstripViewItemsLoaded:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

.field private fullScreenUIHidden:Z

.field private final gestureListener:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

.field private isUserScaling:Z

.field private isUserScrolling:Z

.field private listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

.field private noPhotosDescription:Landroid/widget/TextView;

.field private overScaleFactor:F

.field private final recycledViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private scale:F

.field private slop:I

.field private videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

.field private viewAnimInterpolator:Landroid/animation/TimeInterpolator;

.field private viewGapInPixel:I

.field private final viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

.field private zoomView:Lcom/android/camera/ui/ZoomView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "FilmstripView"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 716
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->checkToIntercept:Z

    .line 151
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->overScaleFactor:F

    .line 153
    iput-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->fullScreenUIHidden:Z

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    .line 161
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewItemsLoaded:Lcom/google/common/util/concurrent/SettableFuture;

    .line 717
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripGestures;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripGestures;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView;B)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->gestureListener:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    .line 718
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/filmstrip/widget/FilmstripView;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/filmstrip/widget/FilmstripView;F)F
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->reload()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripFragment;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewItemsLoaded:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->update(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateInsertion(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getCurrentItemAdapterIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderAllThumbnails()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateNoPhotosIndicator()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->animateItemRemoval(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/filmstrip/widget/FilmstripView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/filmstrip/widget/FilmstripView;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->clampCenterX()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->scrollCurrentItemToCenter()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->isCurrentItemCentered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/filmstrip/widget/FilmstripView;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->recycleView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderThumbnail(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->onEnterFullScreen()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->onEnterFilmstrip()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->setViewGap(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFilmstrip()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->setListener(Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/filmstrip/widget/FilmstripView;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/FilmstripDataAdapter;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->onLeaveZoomView()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/filmstrip/widget/FilmstripView;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/ui/ZoomView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/filmstrip/widget/FilmstripView;)F
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->overScaleFactor:F

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->resetZoomView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inZoomView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->fullScreenUIHidden:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->onEnterFullScreenUiHidden()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderFullRes(I)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/camera/filmstrip/widget/FilmstripView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    return p1
.end method

.method static synthetic access$600$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5TRMIP37CLQ2UHJ9DHMN6T3ID5O5CQB5ESTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/android/camera/filmstrip/widget/FilmstripView;)Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->demoteData(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/camera/filmstrip/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->promoteData(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/camera/filmstrip/widget/FilmstripView;Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/filmstrip/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->hideZoomView()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/camera/filmstrip/widget/FilmstripView;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScaling:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/android/camera/filmstrip/widget/FilmstripView;Z)Z
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScaling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/filmstrip/widget/FilmstripView;)[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    return-object v0
.end method

.method private final adjustChildZOrder()V
    .locals 2

    .prologue
    .line 1138
    const/4 v0, 0x4

    :goto_0
    if-ltz v0, :cond_1

    .line 1139
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->bringViewToFront()V

    .line 1138
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->bringChildToFront(Landroid/view/View;)V

    .line 1146
    return-void
.end method

.method private final animateItemRemoval(I)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v1, 0x0

    .line 1482
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 1483
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->resetZoomView()V

    .line 1485
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v0

    move v2, v1

    .line 1488
    :goto_0
    if-ge v2, v9, :cond_2

    .line 1489
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 1492
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setIndex(I)V

    .line 1488
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1494
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 1621
    :cond_3
    return-void

    .line 1498
    :cond_4
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v2, v0

    .line 1499
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v2

    iget v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    add-int/2addr v4, v2

    .line 1501
    add-int/lit8 v2, v0, 0x1

    :goto_1
    if-ge v2, v9, :cond_6

    .line 1502
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v2

    if-eqz v5, :cond_5

    .line 1503
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1501
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1507
    :cond_6
    if-lt v0, v8, :cond_12

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    .line 1508
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v5}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v5

    if-ge v2, v5, :cond_12

    move v2, v0

    .line 1512
    :goto_2
    const/4 v5, 0x4

    if-ge v2, v5, :cond_7

    .line 1513
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v7, v2, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v2

    .line 1512
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1519
    :cond_7
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v11

    if-eqz v2, :cond_8

    .line 1520
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1524
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFullScreen()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1525
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v8

    .line 1526
    if-eqz v2, :cond_9

    .line 1527
    invoke-virtual {v2, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1529
    :cond_9
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v11

    .line 1530
    if-eqz v2, :cond_a

    .line 1531
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1536
    :cond_a
    :goto_3
    if-ge v0, v9, :cond_c

    .line 1537
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_b

    .line 1538
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    int-to-float v5, v4

    invoke-virtual {v2, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1536
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1544
    :cond_c
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v8

    .line 1545
    if-eqz v0, :cond_e

    .line 1546
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_f

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 1547
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-le v2, v4, :cond_f

    .line 1548
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    iget v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    sub-int/2addr v2, v4

    .line 1549
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    move v0, v1

    .line 1550
    :goto_4
    if-ge v0, v9, :cond_f

    .line 1551
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v0

    if-eqz v4, :cond_d

    .line 1552
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v0

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->translateXScaledBy(F)V

    .line 1550
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1558
    :cond_e
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "Caught invalid update in removal animation."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    :cond_f
    :goto_5
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateCenterXWithCurrentCenterItem()V

    .line 1593
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 1594
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v2

    cmpg-float v2, v2, v10

    if-gez v2, :cond_10

    .line 1595
    neg-int v0, v0

    .line 1598
    :cond_10
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationY()F

    move-result v2

    int-to-float v0, v0

    add-float/2addr v0, v2

    const-wide/16 v4, 0x190

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 1597
    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    .line 1599
    const-wide/16 v4, 0x190

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v10, v4, v5, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    .line 1600
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$2;

    invoke-direct {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$2;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    const-wide/16 v2, 0x190

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1609
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 1610
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 1613
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v8

    if-eqz v0, :cond_3

    move v0, v1

    .line 1616
    :goto_6
    if-ge v0, v9, :cond_3

    .line 1617
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_11

    .line 1618
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    .line 1616
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1560
    :cond_12
    if-gt v0, v8, :cond_16

    .line 1563
    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    move v2, v0

    .line 1565
    :goto_7
    if-lez v2, :cond_13

    .line 1566
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v7, v2, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v2

    .line 1565
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1572
    :cond_13
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    if-eqz v2, :cond_14

    .line 1573
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v5

    aput-object v5, v2, v1

    .line 1577
    :cond_14
    :goto_8
    if-ltz v0, :cond_f

    .line 1578
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    .line 1579
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    neg-int v5, v4

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1577
    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1585
    :cond_16
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    goto/16 :goto_5
.end method

.method private final buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 967
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->isActivityFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "Activity destroyed, don\'t load data"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 994
    :goto_0
    return-object v0

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    .line 974
    if-nez v3, :cond_1

    move-object v0, v1

    .line 975
    goto :goto_0

    .line 981
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 982
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 984
    sget-object v4, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "suggesting item bounds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v4, v0, v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 4819
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getItemViewType(I)I

    move-result v0

    .line 4820
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 4822
    if-eqz v0, :cond_5

    .line 4823
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 4825
    :goto_1
    if-eqz v2, :cond_2

    .line 4826
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4828
    :cond_2
    sget-object v4, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x1f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "getRecycledView, recycled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

    invoke-interface {v0, v2, p1, v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;

    move-result-object v2

    .line 989
    if-nez v2, :cond_4

    move-object v0, v1

    .line 990
    goto/16 :goto_0

    .line 4828
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 992
    :cond_4
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-direct {v0, p1, v2, v3, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;-><init>(ILandroid/view/View;Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    .line 993
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->addViewToHierarchy()V

    goto/16 :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_1
.end method

.method private final clampCenterX()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1111
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 1112
    if-nez v2, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return v0

    .line 1117
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v0, v1

    .line 1126
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    iput v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v4}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 1121
    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v4

    if-le v3, v4, :cond_2

    move v0, v1

    .line 1123
    goto :goto_1
.end method

.method private final demoteData(I)V
    .locals 1

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onFocusedDataDemoted(I)V

    .line 2065
    :cond_0
    return-void
.end method

.method private final fadeAndScaleRightViewItem(I)V
    .locals 6

    .prologue
    const/4 v3, 0x4

    .line 1238
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    .line 1239
    :cond_0
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "fadeAndScaleRightViewItem() - bufferIndex out of bound!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1243
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    .line 1244
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 1245
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1246
    :cond_2
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x59

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "fadeAndScaleRightViewItem() - Invalid view item (curr or prev == null).curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    :cond_3
    const/4 v2, 0x3

    if-le p1, v2, :cond_4

    .line 1256
    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0

    .line 1259
    :cond_4
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1260
    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    if-gt v2, v1, :cond_5

    .line 1263
    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0

    .line 1266
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    .line 1267
    iget v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    int-to-float v3, v3

    int-to-float v4, v1

    sub-float/2addr v3, v4

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1268
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1271
    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_0
.end method

.method private final findItemInBufferByAdapterIndex(I)I
    .locals 2

    .prologue
    .line 1625
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 1626
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1630
    :goto_1
    return v0

    .line 1625
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1630
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private final getCurrentItemAdapterIndex()I
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1153
    if-nez v0, :cond_0

    .line 1154
    const/4 v0, -0x1

    .line 1156
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    goto :goto_0
.end method

.method private final hideZoomView()V
    .locals 2

    .prologue
    .line 1469
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 1471
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1473
    :cond_0
    return-void
.end method

.method private final inFilmstrip()Z
    .locals 2

    .prologue
    .line 1809
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    const v1, 0x3f333333    # 0.7f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final inFullScreen()Z
    .locals 2

    .prologue
    .line 1813
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final inZoomView()Z
    .locals 2

    .prologue
    .line 1817
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isCurrentItemCentered()Z
    .locals 2

    .prologue
    .line 2706
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iget v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final layoutViewItems(Z)V
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v11, 0x5

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v9, 0x2

    .line 1277
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 5047
    :cond_0
    :goto_0
    return-void

    .line 1283
    :cond_1
    if-eqz p1, :cond_2

    .line 1284
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v9

    .line 1285
    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1288
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    const v3, 0x3f333333    # 0.7f

    sub-float/2addr v2, v3

    const v3, 0x3e99999a    # 0.3f

    div-float/2addr v2, v3

    .line 1297
    invoke-interface {v0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v5

    .line 1299
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    add-int/2addr v2, v0

    move v0, v1

    .line 1305
    :goto_1
    if-ltz v0, :cond_3

    .line 1306
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v0

    .line 1307
    if-eqz v3, :cond_3

    .line 1312
    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    .line 1313
    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    sub-int/2addr v6, v7

    .line 1314
    invoke-virtual {v3, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1305
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1317
    :cond_3
    const/4 v0, 0x3

    :goto_2
    if-ge v0, v11, :cond_4

    .line 1318
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v0

    .line 1319
    if-eqz v3, :cond_4

    .line 1324
    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    .line 1325
    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    add-int/2addr v6, v7

    .line 1326
    invoke-virtual {v3, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1330
    :cond_4
    cmpl-float v0, v5, v10

    if-nez v0, :cond_7

    .line 1331
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    .line 1332
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1333
    iget v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    if-ge v6, v3, :cond_5

    .line 1336
    invoke-direct {p0, v9}, Lcom/android/camera/filmstrip/widget/FilmstripView;->fadeAndScaleRightViewItem(I)V

    :goto_3
    move v0, v1

    .line 1368
    :goto_4
    if-ltz v0, :cond_9

    .line 1369
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v0

    .line 1370
    if-eqz v3, :cond_9

    .line 1373
    invoke-direct {p0, v0, v2, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->translateLeftViewItem(IIF)V

    .line 1368
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1337
    :cond_5
    iget v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    if-le v6, v3, :cond_6

    .line 1340
    invoke-direct {p0, v9, v2, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->translateLeftViewItem(IIF)V

    goto :goto_3

    .line 1342
    :cond_6
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1343
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1344
    invoke-virtual {v0, v10}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1345
    invoke-virtual {v0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    goto :goto_3

    .line 1348
    :cond_7
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    .line 1349
    invoke-virtual {v0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1352
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getTranslationX()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1353
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1354
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v3, v3, v1

    if-nez v3, :cond_8

    .line 1355
    invoke-virtual {v0, v10}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_3

    .line 1357
    :cond_8
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v3

    .line 1358
    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v6

    .line 1359
    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    int-to-float v7, v7

    int-to-float v8, v6

    sub-float/2addr v7, v8

    sub-int/2addr v3, v6

    int-to-float v3, v3

    div-float v3, v7, v3

    .line 1361
    sub-float v6, v10, v3

    sub-float v7, v10, v5

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    invoke-virtual {v0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_3

    .line 1377
    :cond_9
    const/4 v0, 0x3

    move v3, v0

    :goto_5
    if-ge v3, v11, :cond_11

    .line 1378
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v6, v0, v3

    .line 1379
    if-eqz v6, :cond_11

    .line 1383
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    iget v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    invoke-virtual {v6, v0, v2, v7}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1385
    cmpl-float v0, v5, v10

    if-nez v0, :cond_a

    .line 1387
    invoke-direct {p0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->fadeAndScaleRightViewItem(I)V

    .line 1377
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 1389
    :cond_a
    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    move v2, v1

    .line 1390
    :goto_7
    if-nez v2, :cond_d

    move v0, v1

    .line 1392
    :goto_8
    const/4 v7, 0x3

    if-ne v3, v7, :cond_e

    .line 1395
    sub-float v7, v10, v5

    invoke-virtual {v6, v7}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1409
    :goto_9
    if-eqz v0, :cond_b

    if-nez v2, :cond_b

    .line 1410
    invoke-virtual {v6, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1413
    :cond_b
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    .line 1414
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    invoke-virtual {v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v5

    .line 1413
    invoke-virtual {v6, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_6

    :cond_c
    move v2, v4

    .line 1389
    goto :goto_7

    :cond_d
    move v0, v4

    .line 1390
    goto :goto_8

    .line 1397
    :cond_e
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-nez v7, :cond_f

    .line 1398
    invoke-virtual {v6, v10}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    goto :goto_9

    .line 1403
    :cond_f
    if-eqz v2, :cond_10

    .line 1404
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    :cond_10
    move v0, v4

    goto :goto_9

    .line 5038
    :cond_11
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFilmstrip()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5043
    :cond_12
    iget v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    move v3, v4

    .line 5939
    :goto_a
    if-ge v3, v11, :cond_14

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v3

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v3

    .line 5940
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 5941
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 5944
    :cond_14
    if-ne v3, v11, :cond_16

    .line 5945
    const/4 v3, -0x1

    .line 5046
    :cond_15
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    if-eq v3, v9, :cond_0

    .line 5051
    add-int/lit8 v1, v3, -0x2

    .line 5052
    if-lez v1, :cond_1e

    move v0, v4

    .line 5054
    :goto_b
    if-ge v0, v1, :cond_17

    .line 5055
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->removeItem(I)V

    .line 5054
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 5948
    :cond_16
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5950
    add-int/lit8 v2, v3, 0x1

    :goto_c
    if-ge v2, v11, :cond_15

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v2

    if-eqz v0, :cond_15

    .line 5952
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_22

    .line 5956
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    .line 5957
    sub-int v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 5958
    if-ge v0, v1, :cond_22

    move v1, v2

    .line 5950
    :goto_d
    add-int/lit8 v2, v2, 0x1

    move v3, v1

    move v1, v0

    goto :goto_c

    :cond_17
    move v0, v4

    .line 5058
    :goto_e
    add-int v2, v0, v1

    if-ge v2, v11, :cond_18

    .line 5059
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int v4, v0, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 5058
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 5062
    :cond_18
    rsub-int/lit8 v0, v1, 0x5

    :goto_f
    if-ge v0, v11, :cond_1a

    .line 5063
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5064
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_19

    .line 5065
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    aput-object v2, v1, v0

    .line 5062
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 5068
    :cond_1a
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 5086
    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 5087
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_1c

    .line 5088
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataFocusChanged$514KIAAM(I)V

    .line 5089
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    .line 5090
    add-int/lit8 v1, v0, 0x5

    .line 5091
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v2

    .line 5092
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v3, v0, v1, v2}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onScroll(III)V

    .line 5097
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

    if-eqz v0, :cond_1d

    .line 5098
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v9

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$900(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 5099
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;->didScrollToItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 5101
    :cond_1d
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomAtIndexChanged()V

    goto/16 :goto_0

    .line 5071
    :cond_1e
    const/4 v0, 0x4

    :goto_10
    add-int/lit8 v2, v1, 0x5

    if-lt v0, v2, :cond_1f

    .line 5072
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->removeItem(I)V

    .line 5071
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 5075
    :cond_1f
    const/4 v0, 0x4

    :goto_11
    add-int v2, v0, v1

    if-ltz v2, :cond_20

    .line 5076
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int v4, v0, v1

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 5075
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 5079
    :cond_20
    rsub-int/lit8 v0, v1, -0x1

    :goto_12
    if-ltz v0, :cond_1b

    .line 5080
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5081
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_21

    .line 5082
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    aput-object v2, v1, v0

    .line 5079
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_22
    move v0, v1

    move v1, v3

    goto/16 :goto_d
.end method

.method private final onEnterFilmstrip()V
    .locals 2

    .prologue
    .line 2068
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "onEnterFilmstrip()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 2070
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onEnterFilmstrip$514IILG_()V

    .line 2072
    :cond_0
    return-void
.end method

.method private final onEnterFullScreen()V
    .locals 1

    .prologue
    .line 2081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->fullScreenUIHidden:Z

    .line 2082
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onEnterFullScreenUiShown$514IILG_()V

    .line 2085
    :cond_0
    return-void
.end method

.method private final onEnterFullScreenUiHidden()V
    .locals 1

    .prologue
    .line 2094
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->fullScreenUIHidden:Z

    .line 2095
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 2096
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onEnterFullScreenUiHidden$514IILG_()V

    .line 2098
    :cond_0
    return-void
.end method

.method private final onLeaveZoomView()V
    .locals 2

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)V

    .line 2109
    return-void
.end method

.method private final promoteData(I)V
    .locals 1

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0, p1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onFocusedDataPromoted(I)V

    .line 2059
    :cond_0
    return-void
.end method

.method private final recycleView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR94KLC___(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 806
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "recycleView"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const v0, 0x7f110014

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 808
    if-lez v1, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 810
    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 812
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->recycledViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 814
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 816
    :cond_1
    return-void
.end method

.method private final reload()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 1998
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 1999
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$2400(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    move v0, v1

    .line 2008
    :goto_0
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2009
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 2012
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    .line 2008
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2016
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2017
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    .line 2018
    if-nez v0, :cond_3

    .line 2053
    :cond_2
    :goto_1
    return-void

    .line 2022
    :cond_3
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    aput-object v2, v0, v4

    .line 2023
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v4

    if-eqz v0, :cond_2

    .line 2026
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 2027
    const/4 v0, 0x3

    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 2028
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2029
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 2027
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2036
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 2038
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    .line 2040
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 2042
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "reload() - Ensure all items are loaded at max size."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderAllThumbnails()V

    .line 2047
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 2049
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_2

    .line 2050
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataReloaded()V

    .line 2051
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataFocusChanged$514KIAAM(I)V

    goto :goto_1
.end method

.method private final removeItem(I)V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_2

    .line 1027
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "removeItem() - Trying to remove a null item!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1030
    :cond_2
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->removeViewFromHierarchy()V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private final renderAllThumbnails()V
    .locals 2

    .prologue
    .line 1016
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1017
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderThumbnail(I)V

    .line 1016
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    return-void
.end method

.method private final renderFullRes(I)V
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    .line 999
    if-nez v0, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 1003
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderFullRes()V

    goto :goto_0
.end method

.method private final renderThumbnail(I)V
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    .line 1008
    if-nez v0, :cond_0

    .line 1013
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderThumbnail()V

    goto :goto_0
.end method

.method private final resetZoomView()V
    .locals 2

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1456
    if-eqz v0, :cond_0

    .line 1459
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    .line 1460
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1000(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 1461
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1100(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 1462
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->resetTransform()V

    .line 1463
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1200(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;)V

    .line 1464
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->access$1300(Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;Z)V

    goto :goto_0
.end method

.method private final scrollCurrentItemToCenter()V
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1164
    if-nez v0, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->isCurrentItemCentered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1169
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

    if-eqz v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;->didScrollToItem(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 1175
    :cond_2
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    if-eqz v1, :cond_4

    .line 1176
    :cond_3
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[fling] mController.isScrolling() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1180
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    .line 1181
    const/high16 v1, 0x44160000    # 600.0f

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    sub-int/2addr v2, v0

    .line 1184
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    .line 1185
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1187
    sget-object v2, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v3, "[fling] Scroll to center."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->scrollToPosition(IIZ)V

    goto :goto_0
.end method

.method private final setDataAdapter(Lcom/android/camera/filmstrip/FilmstripDataAdapter;)V
    .locals 3

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    .line 1752
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1753
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v1, v0, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->suggestViewSizeBound(II)V

    .line 1754
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    new-instance v1, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;

    new-instance v2, Lcom/android/camera/filmstrip/widget/FilmstripView$3;

    invoke-direct {v2, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$3;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    invoke-direct {v1, v2}, Lcom/android/camera/filmstrip/MainThreadFilmstripListener;-><init>(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    invoke-interface {v0, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->addListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V

    .line 1806
    return-void
.end method

.method private final setListener(Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    .line 855
    return-void
.end method

.method private final setViewGap(I)V
    .locals 0

    .prologue
    .line 858
    iput p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    .line 859
    return-void
.end method

.method private final slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    .line 1476
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateTranslationX(FJLandroid/animation/TimeInterpolator;)V

    .line 1477
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateTranslationY(FJLandroid/animation/TimeInterpolator;)V

    .line 1478
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->animateAlpha(FJLandroid/animation/TimeInterpolator;)V

    .line 1479
    return-void
.end method

.method private final translateLeftViewItem(IIF)V
    .locals 7

    .prologue
    .line 1202
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 1203
    :cond_0
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "translateLeftViewItem() - Index out of bound!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :goto_0
    return-void

    .line 1207
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    .line 1208
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    .line 1209
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1210
    :cond_2
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x56

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "translateLeftViewItem() - Invalid view item (curr or next == null). curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v2

    .line 1217
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v1

    .line 1218
    sub-int v3, v1, p2

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    .line 1220
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    iget v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->layoutWithTranslationX(Landroid/graphics/Rect;IF)V

    .line 1221
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1222
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1224
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFullScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1225
    iget v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    sub-int/2addr v4, v2

    mul-int/2addr v3, v4

    sub-int/2addr v1, v2

    div-int v1, v3, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_0

    .line 1227
    :cond_4
    int-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    goto :goto_0
.end method

.method private final update(Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    .line 1927
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    .line 1928
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->reload()V

    .line 1991
    :goto_0
    return-void

    .line 1933
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v3

    .line 1934
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    .line 1940
    invoke-interface {p1, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1941
    invoke-direct {p0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateViewItem(I)V

    .line 1942
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v1

    .line 1943
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1948
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    .line 1949
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    .line 1950
    invoke-interface {v1}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v1

    .line 1951
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredWidth()I

    move-result v4

    .line 1952
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredHeight()I

    move-result v5

    .line 1947
    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v1

    .line 1953
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 1958
    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 1959
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    .line 1960
    if-eqz v1, :cond_3

    .line 1961
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    .line 1962
    invoke-interface {p1, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1963
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateViewItem(I)V

    .line 1958
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1966
    :cond_3
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 1967
    if-eqz v1, :cond_2

    .line 1968
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_2

    .line 1974
    :cond_4
    const/4 v0, 0x3

    :goto_3
    const/4 v1, 0x5

    if-ge v0, v1, :cond_7

    .line 1975
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v1, v1, v0

    .line 1976
    if-eqz v1, :cond_6

    .line 1977
    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    .line 1978
    invoke-interface {p1, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$UpdateReporter;->isDataUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1979
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateViewItem(I)V

    .line 1974
    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1982
    :cond_6
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 1983
    if-eqz v1, :cond_5

    .line 1984
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_4

    .line 1988
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 1990
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->requestLayout()V

    goto/16 :goto_0
.end method

.method private final updateCenterXWithCurrentCenterItem()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1745
    if-eqz v0, :cond_0

    .line 1746
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getCenterX()I

    move-result v0

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->centerX:I

    .line 1748
    :cond_0
    return-void
.end method

.method private final updateInsertion(I)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 1634
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v0

    .line 1635
    if-ne v0, v6, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 1639
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView;->findItemInBufferByAdapterIndex(I)I

    move-result v2

    .line 1640
    if-ltz v2, :cond_0

    if-ge v2, v1, :cond_0

    .line 1643
    add-int/lit8 v0, v2, 0x1

    :cond_0
    move v2, v3

    .line 1649
    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 1650
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v4

    if-lt v4, p1, :cond_1

    .line 1653
    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setIndex(I)V

    .line 1649
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1655
    :cond_2
    if-ne v0, v6, :cond_4

    .line 1721
    :cond_3
    :goto_1
    return-void

    .line 1659
    :cond_4
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 1662
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    .line 1663
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    .line 1664
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v2

    .line 1665
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredWidth()I

    move-result v6

    .line 1666
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getMeasuredHeight()I

    move-result v7

    .line 1661
    invoke-static {v4, v5, v2, v6, v7}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v2

    .line 1667
    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewGapInPixel:I

    add-int/2addr v2, v4

    .line 1668
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->buildViewItemAt(I)Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    move-result-object v4

    .line 1669
    if-nez v4, :cond_5

    .line 1670
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "unable to build inserted item from data"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1674
    :cond_5
    if-lt v0, v8, :cond_8

    .line 1675
    if-ne v0, v8, :cond_6

    .line 1676
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getLeftPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setLeftPosition(I)V

    .line 1679
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->removeItem(I)V

    .line 1680
    :goto_2
    if-le v1, v0, :cond_a

    .line 1681
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    iget-object v6, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    .line 1682
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    .line 1683
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    neg-int v6, v2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1684
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    .line 1680
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1690
    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 1691
    if-ltz v0, :cond_3

    .line 1694
    invoke-direct {p0, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView;->removeItem(I)V

    .line 1695
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v0, :cond_a

    .line 1696
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    if-eqz v5, :cond_9

    .line 1697
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    int-to-float v6, v2

    invoke-virtual {v5, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationX(F)V

    .line 1698
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v5, v5, v1

    invoke-direct {p0, v5}, Lcom/android/camera/filmstrip/widget/FilmstripView;->slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    .line 1699
    iget-object v5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    add-int/lit8 v6, v1, -0x1

    iget-object v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v7, v7, v1

    aput-object v7, v5, v6

    .line 1695
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1704
    :cond_a
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aput-object v4, v1, v0

    .line 1707
    if-ne v0, v8, :cond_b

    .line 1708
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateCenterXWithCurrentCenterItem()V

    .line 1711
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderThumbnail(I)V

    .line 1712
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setAlpha(F)V

    .line 1713
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setTranslationY(F)V

    .line 1714
    invoke-direct {p0, v4}, Lcom/android/camera/filmstrip/widget/FilmstripView;->slideViewBack(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)V

    .line 1715
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 1717
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inFullScreen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1718
    invoke-virtual {v4, v3}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setVisibility(I)V

    .line 1720
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    goto/16 :goto_1
.end method

.method private final updateNoPhotosIndicator()V
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->noPhotosDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    if-nez v0, :cond_1

    .line 1730
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->noPhotosDescription:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1734
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 1736
    :cond_0
    return-void

    .line 1732
    :cond_1
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->noPhotosDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private final updateViewItem(I)V
    .locals 6

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, p1

    .line 1860
    if-nez v0, :cond_1

    .line 1861
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "updateViewItem() - Trying to update an null item!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    .line 1866
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v2, v1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 1867
    if-nez v2, :cond_2

    .line 1868
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "updateViewItem() - Trying to update item with null FilmstripItem!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1871
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getData()Lcom/android/camera/data/FilmstripItem;

    move-result-object v3

    .line 1876
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1877
    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/data/FilmstripItem;->recycle(Landroid/view/View;)V

    .line 1878
    invoke-virtual {v0, v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setData(Lcom/android/camera/data/FilmstripItem;)V

    .line 1879
    sget-object v3, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "updateViewItem() - recycling old data item and setting new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :goto_1
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

    invoke-interface {v2, v0, v1, v3}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getView$51662RJ4E9NMIP1FEPKMATPFAPKMATPR95666RRD5TGMSP3IDTKM8BR3C5MMASJ15TI62T315T36IR3DEDQ74QBG95Q6AR94APKM8PBF8DM6IORBCLI46OBCDHH62ORB7CKKOOBECHP6UQB45TR6IPBN5TB6IPBN7C______(Landroid/view/View;ILcom/android/camera/one/v2/lifecycle/StartTasks;)Landroid/view/View;

    .line 1892
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    .line 1894
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->clampCenterX()Z

    move-result v0

    .line 1895
    if-eqz v0, :cond_3

    .line 1896
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->stopScrolling(Z)Z

    .line 1899
    :cond_3
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "updateViewItem(bufferIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "updateViewItem() - mIsUserScrolling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v1}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "updateViewItem() - mController.isScrolling() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    if-nez v0, :cond_5

    .line 1907
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->renderThumbnail(I)V

    .line 1911
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->isUserScrolling:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1912
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->updateCenterXWithCurrentCenterItem()V

    .line 1915
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->adjustChildZOrder()V

    .line 1916
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->invalidate()V

    .line 1917
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    if-eqz v0, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onDataUpdated$514IILG_()V

    goto/16 :goto_0

    .line 1881
    :cond_7
    sget-object v2, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v3, "updateViewItem() - updating data with the same item"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final getController()Lcom/android/camera/filmstrip/FilmstripViewController;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    return-object v0
.end method

.method public final getFilmstripViewItemsLoadedFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewItemsLoaded:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method final getGestureListener()Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->gestureListener:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1855
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->gestureListener:Lcom/android/camera/filmstrip/gesture/FilmstripGestureRecognizer$Listener;

    return-object v0
.end method

.method public final init$51666RRD5TGMSP3IDTKM8BR3C5MMASJ15TJ6IR3DEDQ74QBG5T36IR3DEDQ74QBG8PP62PRDCLN78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0GRFDPQ74RRCDHIN4EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR1E1O2UGR1DLIN4OA1CDQ6ITJ9EHSK6RREEHP6UR3CCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UTR9CHJMAT1F8PKMORBJEHP6IS2MD5INE92GDHGNILJ9CHIMUIBEEHIMST1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCPKMORBJEHP6IS1FELKIUHJ9DHMN6T3ID5O5AQAJEHGN8PB3D1GN4T1R55B0____(Lcom/android/camera/filmstrip/FilmstripFragment;Lcom/android/camera/filmstrip/FilmstripController;Lcom/android/camera/app/AppController;Lcom/android/camera/one/v2/lifecycle/StartTasks;Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 726
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "FilmstripView.init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->setWillNotDraw(Z)V

    .line 728
    iput-object p4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->videoClickedCallback$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FCHGN8O9F8PKMORBJEHP6IS29EHIMQ92MD5I6ARQ3DHKM6QR5CH1M2R3CC9GM6QPR:Lcom/android/camera/one/v2/lifecycle/StartTasks;

    .line 729
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 730
    iput-object p5, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripUiStatechart:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    .line 732
    iput-object p3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->activityController$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FC5O70BQ3C5MMASJ185HN8QBMD5Q7IGRFDPQ74RRCDHIN4EO_:Lcom/android/camera/app/AppController;

    .line 733
    iput v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    .line 735
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    .line 736
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewAnimInterpolator:Landroid/animation/TimeInterpolator;

    .line 737
    new-instance v0, Lcom/android/camera/ui/ZoomView;

    invoke-interface {p1}, Lcom/android/camera/filmstrip/FilmstripFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ZoomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    .line 738
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomView;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 743
    invoke-virtual {p2}, Lcom/android/camera/filmstrip/FilmstripController;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewItemsLoaded:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->slop:I

    .line 748
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 750
    invoke-interface {p1}, Lcom/android/camera/filmstrip/FilmstripFragment;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 755
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->overScaleFactor:F

    .line 756
    iget v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->overScaleFactor:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 757
    iput v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->overScaleFactor:F

    .line 760
    :cond_1
    new-instance v0, Lcom/android/camera/filmstrip/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/filmstrip/widget/FilmstripView$1;-><init>(Lcom/android/camera/filmstrip/widget/FilmstripView;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 803
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 1424
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->layoutViewItems(Z)V

    .line 1425
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1426
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1822
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->controller:Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;

    invoke-virtual {v2}, Lcom/android/camera/filmstrip/widget/FilmstripView$FilmstripViewControllerImpl;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return v0

    .line 1826
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 1827
    iput-boolean v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->checkToIntercept:Z

    .line 1828
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->down:Landroid/view/MotionEvent;

    move v0, v1

    .line 1829
    goto :goto_0

    .line 1830
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 1832
    iput-boolean v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->checkToIntercept:Z

    move v0, v1

    .line 1833
    goto :goto_0

    .line 1835
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->checkToIntercept:Z

    if-nez v2, :cond_4

    move v0, v1

    .line 1836
    goto :goto_0

    .line 1838
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v0, v1

    .line 1839
    goto :goto_0

    .line 1841
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->down:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 1842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->down:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 1843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    iget v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->slop:I

    neg-int v4, v4

    if-ge v2, v4, :cond_6

    .line 1845
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    :cond_6
    move v0, v1

    .line 1850
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1430
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1431
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1432
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    sub-int v1, p4, p2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1433
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    sub-int v1, p5, p3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1434
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->drawArea:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/ZoomView;->layout(IIII)V

    .line 1440
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->inZoomView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 1441
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->resetZoomView()V

    .line 1442
    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView;->layoutViewItems(Z)V

    .line 1444
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 913
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 915
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 916
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 917
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v3, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 923
    if-eqz v5, :cond_2

    .line 3889
    invoke-virtual {v5}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v6

    .line 3890
    iget-object v7, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->dataAdapter:Lcom/android/camera/filmstrip/FilmstripDataAdapter;

    invoke-interface {v7, v6}, Lcom/android/camera/filmstrip/FilmstripDataAdapter;->getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v6

    .line 3891
    if-nez v6, :cond_3

    .line 3892
    sget-object v5, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v6, "measureViewItem() - Trying to measure a null item!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3898
    :cond_3
    invoke-interface {v6}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v7

    .line 3899
    invoke-interface {v6}, Lcom/android/camera/data/FilmstripItem;->getDimensions()Lcom/android/camera/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v8

    .line 3900
    invoke-interface {v6}, Lcom/android/camera/data/FilmstripItem;->getOrientation()I

    move-result v6

    .line 3897
    invoke-static {v7, v8, v6, v1, v2}, Lcom/android/camera/util/CameraUtil;->resizeToFill(IIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 3904
    invoke-virtual {v5, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->setDim(Landroid/graphics/Point;)V

    .line 3906
    iget v7, v6, Landroid/graphics/Point;->x:I

    .line 3907
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 3908
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 3906
    invoke-virtual {v5, v7, v6}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->measure(II)V

    goto :goto_2

    .line 927
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/filmstrip/widget/FilmstripView;->clampCenterX()Z

    .line 929
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->zoomView:Lcom/android/camera/ui/ZoomView;

    .line 931
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 932
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 930
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ZoomView;->measure(II)V

    goto :goto_0
.end method

.method public final renderPlaceholderIntoFirstItem(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 3313
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 3314
    if-nez v0, :cond_0

    .line 3315
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "current filmstrip item is null()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    :goto_0
    return-void

    .line 3318
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3319
    sget-object v0, Lcom/android/camera/filmstrip/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v1, "current filmstrip index != 0"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3323
    :cond_1
    invoke-static {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->access$800(Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;)Landroid/view/View;

    move-result-object v1

    .line 3324
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->renderThumbnailWithPlaceholder(Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final setListener(Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->filmstripViewListener:Lcom/android/camera/filmstrip/widget/FilmstripView$Listener;

    .line 181
    return-void
.end method

.method public final setNoPhotosDescription(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->noPhotosDescription:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->noPhotosDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 175
    return-void
.end method

.method public final zoomAtIndexChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 865
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->viewItems:[Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/camera/filmstrip/widget/FilmstripView$ViewItem;->getAdapterIndex()I

    move-result v0

    .line 869
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->listener:Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;

    iget v2, p0, Lcom/android/camera/filmstrip/widget/FilmstripView;->scale:F

    invoke-interface {v1, v0, v2}, Lcom/android/camera/filmstrip/FilmstripViewController$FilmstripListener;->onZoomAtIndexChanged(IF)V

    goto :goto_0
.end method
