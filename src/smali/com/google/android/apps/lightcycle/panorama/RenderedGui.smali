.class public final Lcom/google/android/apps/lightcycle/panorama/RenderedGui;
.super Ljava/lang/Object;
.source "RenderedGui.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private doneButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private enabledUndoButton:Z

.field private undoButtonStatusListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field

.field private undoButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/util/Callback;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->doneButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 12
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 13
    iput-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    return-void
.end method


# virtual methods
.method public final setUndoButtonEnabled(Z)V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    if-ne p1, v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->enabledUndoButton:Z

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final setUndoButtonStatusListener$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonStatusListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 86
    return-void
.end method

.method public final setUndoButtonVisibilityListener$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNNAT39DGNK6OBCDHH62ORB7CKLC___(Lcom/google/android/apps/camera/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/camera/util/Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    .line 75
    return-void
.end method

.method public final setUndoButtonVisible(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/panorama/RenderedGui;->undoButtonVisibilityListener$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFDHKMEQ3KCDSM6R355TQN8QBC5T1M2R3CC9GM6QPR:Lcom/google/android/apps/camera/util/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method
