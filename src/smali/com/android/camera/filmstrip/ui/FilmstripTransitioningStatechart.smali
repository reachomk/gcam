.class public Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FilmstripTransitioningStatechart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$LeavingFilmstrip;,
        Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$FilmstripVisible;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activityContext:Landroid/content/Context;

.field private filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "FSTransStatechart"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(B)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripShown"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onStart()V

    .line 35
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripHidden"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onStop()V

    .line 44
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->activityContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->resumeRequests()V

    .line 47
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripFragment;->getFilmstripViewController()Lcom/android/camera/filmstrip/FilmstripViewController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripViewController;->goToFirstItem()V

    .line 48
    return-void
.end method

.method public initialize(Lcom/android/camera/filmstrip/FilmstripFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->filmstripFragment:Lcom/android/camera/filmstrip/FilmstripFragment;

    .line 27
    iput-object p2, p0, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->activityContext:Landroid/content/Context;

    .line 28
    return-void
.end method
