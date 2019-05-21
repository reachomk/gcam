.class Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$LeavingFilmstrip;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FilmstripTransitioningStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LeavingFilmstrip"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip Ui Swiping Out"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onLeavingFilmstripCancelled()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip Ui Swipe Out Cancelled"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
