.class final Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;
.super Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsInvisible;
.source "GeneratedFilmstripUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;

    invoke-direct {p0, p1}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsInvisible;-><init>(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    return-void
.end method


# virtual methods
.method public final toggleControlsVisibility()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->access$000(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->exitCurrentState()V

    .line 33
    invoke-super {p0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsInvisible;->toggleControlsVisibility()V

    .line 34
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->access$000(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart$1;->this$0:Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;

    invoke-static {v1}, Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;->access$100(Lcom/android/camera/filmstrip/ui/GeneratedFilmstripUiStatechart;)Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/statecharts/internal/base/StatechartRunner;->setCurrentState(Lcom/google/android/apps/camera/statecharts/internal/base/SuperStateImpl;)V

    .line 35
    return-void
.end method
