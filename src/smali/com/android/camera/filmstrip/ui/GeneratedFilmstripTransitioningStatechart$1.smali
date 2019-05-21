.class final Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart$1;
.super Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$FilmstripVisible;
.source "GeneratedFilmstripTransitioningStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;-><init>(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;

    invoke-direct {p0}, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$FilmstripVisible;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLeavingFilmstripBegin()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;->access$000(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 26
    invoke-super {p0}, Lcom/android/camera/filmstrip/ui/FilmstripTransitioningStatechart$FilmstripVisible;->onLeavingFilmstripBegin()V

    .line 27
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;->access$000(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;

    invoke-static {v1}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;->access$100(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripTransitioningStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 28
    return-void
.end method
