.class final Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;
.super Ljava/lang/Object;
.source "PeekableFilmstripLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->init$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQLD57M4SR5E9R62OJCCKTKOORFDKNM2RJ4E9NMIP1FCDGMQPBIC4NM8OBKC4NKORR3C5M4CQBCDLPN8SJ9E1262T3185I62S3KCLP3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUTR9CHJMAT1FA9NNARJ4CLI58Q3LDLH6SOB9DHB6IPBN7D666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5THM2RB5E9GIUOBJF5N66BQDC5KMSL38E9IM2P1R9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FELKIUORFDPQ74RRCDHIN4BQ3C5MMASJ1ALKL6T31EHIM6Q31E9Q3MJ33DTMIUOBECHP6UQB45THM2RB5E9GIUPJ9DHMN6T3ID5O2UTB95T36IR3DEDQ74QBGAHP62RJJD5Q6IRRED5N6EKRKC5Q6AOR8C5P78EQCCDNMQBR1DPI74RR9CGNM6OBDCLP62BR6D5M6QSRKE9KN0BQ6D5M6QSRKE9KN0HJIC5JMQPBEEGTIILG_(Lcom/google/android/apps/camera/async/UiObservable;Lcom/android/camera/filmstrip/FilmstripDataAdapter;Lcom/android/camera/widget/RoundedThumbnailView;Lcom/google/android/apps/camera/async/MainThread;Lcom/android/camera/ui/controller/CameraUiStatechart;Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;Lcom/android/camera/filmstrip/FilmstripFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

.field private synthetic val$activityLayoutUiObservable:Lcom/google/android/apps/camera/async/UiObservable;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;Lcom/google/android/apps/camera/async/UiObservable;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    iput-object p2, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->val$activityLayoutUiObservable:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->val$activityLayoutUiObservable:Lcom/google/android/apps/camera/async/UiObservable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/UiObservable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/layout/ActivityLayout;

    iget-object v0, v0, Lcom/android/camera/util/layout/ActivityLayout;->windowInsets:Landroid/view/WindowInsets;

    .line 213
    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    iget-object v2, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v2}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$100(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/filmstrip/transition/FilmstripTransitionLayout;->setSystemWindowInset(Landroid/graphics/Rect;)V

    .line 221
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$700(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 225
    iget-object v1, p0, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout$2;->this$0:Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;

    invoke-static {v1}, Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;->access$800(Lcom/android/camera/filmstrip/widget/PeekableFilmstripLayout;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 226
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 227
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 228
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    .line 229
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    .line 225
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method
