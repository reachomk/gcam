.class Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;
.super Lcom/google/android/apps/camera/statecharts/StateBase;
.source "FilmstripUiStatechart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilmstripControlsVisible"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;


# direct methods
.method constructor <init>(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;->this$0:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/statecharts/StateBase;-><init>(C)V

    return-void
.end method


# virtual methods
.method public final enter()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Filmstrip Ui Shown"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;->this$0:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->access$100(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    .line 107
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;->this$0:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->access$200(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    .line 108
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart$FilmstripControlsVisible;->this$0:Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;

    invoke-static {v0}, Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;->access$300(Lcom/android/camera/filmstrip/ui/FilmstripUiStatechart;)V

    .line 113
    return-void
.end method

.method public toggleControlsVisibility()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
